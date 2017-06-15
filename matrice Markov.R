matriceMarkov<-function(etat,temps){
  matrice<-matrix(data = c(0,0.5,0.3,0.3,0,0.3,0.7,0.5,0.4),nrow = 3,ncol = 3)
  manger<- 1
  jouer<- 2
  dormir<- 3
  random<- sample(1:10,1)
  i<-1
  j<-1
  k<-1
  nrow<-3
  ncol<-3
    while(j < nrow+1){
      while(k < ncol+1){
        matrice[j,k]<- matrice[j,k]*10
        k<- k+1
      }
      k<- 1
      j<- j+1
    }
  j<- 1
  k<- 1 
  while(j < nrow+1){
    while(k < ncol+1){
      if (random == matrice[j,k]){
        return(matrice)
      }
      k<-k+1
    }
    k<- 1
    j<-j+1
  }
  
}