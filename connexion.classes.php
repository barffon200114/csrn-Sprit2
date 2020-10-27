<?php 
include 'Bd.config.include.php';

class BaseDeDonneesCo extends PDO{
    var $connexion;
    var $reponse;


    public function __construct(){
        $this->connexion = new PDO(DNS, UTILISATEUR, MDP);
    }

    public function EffectuerCommande($commande){
        $this->reponse = $this->connexion->prepare(commande);
        $this->reponse->execute();
    }

    public function verificationErreur(){
        return $this->reponse->errorCode();
    }

    public function retourCommande($boolMultiple){
        if($boolMultiple){
            return $this->reponse->fetchAll();
        }else{
            return $this->reponse->fetch();
        }
    }

}

?>