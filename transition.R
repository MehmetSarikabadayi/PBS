trajectoireMatrice<-function(matrice, etat, n)
{
  i <- 2      #Definition d'une variable pour la boucle while pour le temps n
  trajectoire <- rep(3,n)   #Création d'un vecteur de longueur n de variables nuls
  trajectoire[1] <- etat
  while(i <= n)
  {
    y <- 1      #Definition d'une variable pour la boucle while pour le parcours d'une ligne
    changement <- FALSE  #Definition d'un booleen pour le changement d'état
    probabilite <- sample(1:10, 1)        #Nombre aléatoire entre 1 et 10
    longueur <- length(matrice[etat,])    #Longueur de la ligne
    variable <- 0
    while(y <= longueur)
    {
      if(changement == FALSE)
      {
        intervalle <- seq(variable,variable+matrice[etat,y]*10)
        if(matrice[etat,y]*10 != 0)
        {
          variable <- matrice[etat,y]*10
        }
        if(probabilite %in% intervalle)
        {
          trajectoire[i] <- y
          etat <- y
          changement <- TRUE
        }
      }
      y <- y + 1
    }
    
    i <- i + 1
  }
  return(trajectoire)
}