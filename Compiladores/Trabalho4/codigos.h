int temp = -1;

int newTemp() {
	return temp--;
}

void getName(int num, char *name){
    if(num >= 0){
        sprintf(name,"$s%d", num);
    }
    else{
       sprintf(name,"$t%d", num);

    }
}
void Li(int temp, int num){
char name_dest[5];
    getName(temp, name_dest);
    printf("li %s, %d\n", name_dest,num);
}

void Move(int dest, int orig){
char name_orig[5];
char name_dest[5];
    getName(dest, name_dest);
    getName(orig, name_orig);
    printf("move %s, %s\n", name_dest, name_orig);
}

char * getNome(int pos){
int i;
	if (pos >= 0) {
		sprintf(nome, "$t%d",pos);
	}
	else
		sprintf(nome, "$t%d", -(pos+1));
		return nome;
}
