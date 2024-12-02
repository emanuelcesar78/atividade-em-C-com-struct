#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct alunos
{
    char nome_aluno[30];
    int matricula[5];
    float media_aluno;
};

void dados_preenchidos(float media,int Matricula[5],char nome[30])
{
    struct alunos turma;
    strcpy(turma.nome_aluno,nome);
    turma.media_aluno = media;
    for(int i = 0; i<5;i++)
        {
            scanf("%d",&Matricula[i]);
        }
    printf("\nDados Registrados\n");
}

void mostra_dados(struct alunos *turma)
{
    printf("Nome do aluno: %s\n",turma->nome_aluno);
    printf("Matricula:");
    for (int i = 0; i<5;i++)
        {
            printf("%d",turma->matricula[i]);
        }
    printf("\nMedia : %.2f\n",turma->media_aluno);

}

int main()
{
    int numeros_de_estudantes = 500,matricula[5];
    float media;
    char nome[30];
    struct alunos turma[numeros_de_estudantes];


    while(numeros_de_estudantes != 0)
        {
            for (int i = 0; i<5; i++){
              printf("\ndigite a Matricula do aluno de [%d] digitos :", i);
              scanf("%d",&matricula);
            }
            printf("\ndigiote o nome :");
            scanf("%s",&nome);

            printf("\ndigite a media do aluno:");
            scanf("%f",&media);

            dados_preenchidos(media,matricula,nome);
        }
        printf("\nDados do alunos :\n");
    for(int i = 0;i< numeros_de_estudantes;i++)
        {
            mostra_dados(&turma[i]);
        }

}
