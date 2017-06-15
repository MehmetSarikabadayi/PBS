puissanceMatrice<-function(colonne,ligne,donnee,puissance)
{
  matrice<-matrix(data = donnee,nrow = ligne,ncol = colonne)
  matriceResultat<-matrice
  i<-1
  while (i<puissance){
    matriceResultat<-matriceResultat%*%matrice
    i<- i+1
  }
  return (matriceResultat)
}