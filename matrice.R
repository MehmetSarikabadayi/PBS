puissanceMatrice<-function(colonne,ligne,donnée,puissance)
{
  matrice<-matrix(data = donnée,nrow = ligne,ncol = colonne)
  matriceResultat<-matrice
  i<-1
  while (i<puissance){
    matriceResultat<-matriceResultat%*%matrice
    i<- i+1
  }
  return (matriceResultat)
}