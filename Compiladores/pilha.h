#define MAX 1000
int Pilha[MAX];
int tam = 0;
int a, b;

void push(int valor) {
    Pilha[tam++] = valor;
}
int pop() {
    return Pilha[--tam];
}

int topo() {
    return Pilha[tam-1];
}
