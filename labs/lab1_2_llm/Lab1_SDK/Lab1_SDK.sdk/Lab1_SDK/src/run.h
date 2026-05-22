#ifndef RUN_H
#define RUN_H

typedef struct {
    int dim;
    int hidden_dim;
    int n_layers;
    int n_heads;
    int n_kv_heads;
    int vocab_size;
    int seq_len;
} Config;

typedef struct {
    float* token_embedding_table;
    float* rms_att_weight;
    float* wq;
    float* wk;
    float* wv;
    float* wo;
    float* rms_ffn_weight;
    float* w1;
    float* w2;
    float* w3;
    float* rms_final_weight;
    float* wcls;
} TransformerWeights;

typedef struct {
    // current wave of activations
    float *x; // activation at current time stamp (dim,)
    float *xb; // same, but inside a residual branch (dim,)
    float *xb2; // an additional buffer just for convenience (dim,)
    float *hb; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *hb2; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *q; // query (dim,)
    float *k; // key (dim,)
    float *v; // value (dim,)
    float *att; // buffer for scores/attention values (n_heads, seq_len)
    float *logits; // output logits
    // kv cache
    float* key_cache;   // (layer, seq_len, dim)
    float* value_cache; // (layer, seq_len, dim)
} RunState;

typedef struct {
    Config config;
    TransformerWeights weights;
    RunState state;
    unsigned char* data;   // 原本 mmap 對應的資料，現在改成 malloc 讀進來的 buffer
    unsigned int file_size;
} Transformer;

typedef struct {
    char *str;
    int id;
} TokenIndex;

typedef struct {
    int vocab_size;
    int max_token_length;
    char** vocab;
    float* vocab_scores;
    TokenIndex* sorted_vocab;
    unsigned char byte_pieces[512];
} Tokenizer;

int read_checkpoint (
                      char* checkpoint              ,
                      Config* config                ,
                      TransformerWeights* weights   ,
                      unsigned char** data          ,
                      unsigned int* file_size
                    );

int build_transformer(Transformer *t, char *checkpoint_path);
int build_tokenizer(Tokenizer* t, char* tokenizer_path, int vocab_size);

void generate(Transformer *transformer, Tokenizer *tokenizer, char *prompt, int steps);

void free_transformer(Transformer* t);
void free_tokenizer(Tokenizer* t);

#endif
