#include <stdio.h>

/*Max number of characters to be read/write from file*/
#define MAX_CHAR_IN_LINE 255

long last_pos(char *filename){
  FILE *file=NULL;

  file = fopen(filename, "r");
  if(file == NULL){
     printf("File Pointer is invalid\n");
     return -1;
  }
  fseek (file, 0, SEEK_END); /* ustawiamy wskaźnik na koniec pliku */
  long poz;
  poz = ftell( file );
  printf ("Rozmiar pliku: %ld\n", poz);
  return poz;
}

int read_and_show_the_file(char *filename){
  FILE *fp;
  char text[29][MAX_CHAR_IN_LINE];
  int i,j,len=0;
  fp = fopen(filename, "r");
  if(fp == NULL){
    printf("File Pointer is invalid\n");
    return -1;
  }

  for (len=0; fscanf(fp, "%s", &text[len][255]) != -1; len++) ;

  for(i=0; i <= len; i++) {
    printf("%s\n",text[i]);
  }

  fclose(fp);

  return 0;
}

int main(int argc, char *argv[]){
  if(argc != 3){
    for (int i = 0; i < argc; i++) {
      printf("%s\n", argv[i]);
    }
    printf("Execute the program along with file name to be read and printed. \n\
            \rFormat : \"%s <file-name>\"\n",argv[0]);
    return -1;
  }

  char *filename1 = argv[1];
  char *filename2 = argv[2];

  if( (read_and_show_the_file(filename1)) == 0){
    printf("File Read and Print to stdout is successful\n");
  }
  if( (read_and_show_the_file(filename2)) == 0){
    printf("File Read and Print to stdout is successful\n");
  }
  return 0;
}
