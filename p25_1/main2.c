int contaBitsZero(unsigned int numero){
    int cont=0;
    for (int i = 0; i<32; i++){
        if ((numero & 1) == 0){
            cont++;
        }
        numero >>= 1;   
    }
    return cont;
}