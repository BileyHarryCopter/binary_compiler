#include <stdio.h>
#include <stdint.h>

typedef struct node_t
{
    int data_;
    struct node_t *left_;
    struct node_t *right_;
} node_t;

void insert(node_t *top)
{
    return;
}

int main()
{
    node_t tree;

    tree.data_ = 555545434;
    tree.left_ = NULL;
    tree.right_ = NULL;

    insert(&tree);

    return 0;
}