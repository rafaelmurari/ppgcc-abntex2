hash_t hashtable;

update_hash(int key, int value) {
    bucket_t *bucket = malloc(sizeof(bucket_t));
    bucket->key = key;
    bucket->value = value;
    insert(hashtable, bucket);
}
