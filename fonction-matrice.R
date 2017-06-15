puissanceMatrice<-function(colonne,ligne,donnée,puissance)
{
  matrice<-matrix(data = donnée,nrow = colonne,ncol = ligne)
  matriceResultat<-matrice
  i<-1
  matrice2<-matrix(data = c(3,2,1,1),nrow = 2,ncol = 2)
  while (i<puissance){
    matriceResultat<-matriceResultat%*%matrice
    i<- i+1
  }
  return (matriceResultat)
}


