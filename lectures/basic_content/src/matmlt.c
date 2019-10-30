int matvec(float** matrix, float* vector, float* result, int size_i, int size_j)
{
   int i,j;

//#pragma omp parallel shared(matrix,result,vector) private(i,j) {
//#pragma omp for schedule(static)
    for (i=0; i<size_i; i=i++) {
      result[i]=0.0;
      for (j=0; j<size_j; j=j++) {
        result[i]=(result[i])+((matrix[i][j])*(vector[j]));
      }
    }
//  }
   //return 0;
}

int main() {
    int size_i=100, size_j=100;
    float matrix[size_i][size_j];
    float vector[size_j], result[size_j];
    for(int j=0; j<size_j; j++) {
      for(int i=0; i<size_i; i++) {
        matrix[i][j] = i + j + 1;
      }
      vector[j] = 1.0;
    }
    matvec(matrix, vector, result, size_i, size_j);
}
