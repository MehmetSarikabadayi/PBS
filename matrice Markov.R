matriceMarkov<-function(etat,temps){
  matrice<-matrix(data = c(0,0.5,0.3,0.3,0,0.3,0.7,0.5,0.4),nrow = 3,ncol = 3)
  etat<- 1
  manger<- 1
  jouer<- 2
  dormir<- 3
  i<-1
  j<-1
  k<-1
  x<-0
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
  while(x<temps){
    if(etat == 1){
        random<- sample(1:10,1)
        if (random == matrice[1,2]){
          etat<-jouer
          print(etat)
        }
        if (random == matrice[1,3]){
          etat<-dormir
          print(etat)
        }
    }
    if (etat == 2){
      random<- sample(1:10,1)
      if (random == matrice[2,1]){
        etat<-manger
        print(etat)
      }
      if (random == matrice[2,3]){
        etat<-dormir
        print(etat)
      }
    }
    if (etat == 3){
      random<- sample(1:10,1)
      if (random == matrice[3,1]){
        etat<-manger
        print(etat)
      }
      if (random == matrice[3,2]){
        etat<-dormir
        print(etat)
      }
    }
      x<-x+1
    }
  return(etat)
  
}