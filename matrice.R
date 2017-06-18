puissanceMatrice<-function(matrice, puissance)
{
  matriceResultat<-matrice
  i<-1
  while (i<puissance){
    matriceResultat<-matriceResultat%*%matrice         # %*% permet la multiplication de matrice
    i<- i+1
  }
  return (matriceResultat)
}