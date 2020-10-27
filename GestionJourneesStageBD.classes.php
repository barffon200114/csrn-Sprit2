<?php
include_once 'Bd.config.include.php';

class GestionJournees {
    var $connexion;
    var $reponse;

    public function __construct(){
        $this->connexion = new PDO(DSN , UTILISATEUR , MDP);
        var_dump($this->connexion);
    }

    public function ChercherStage($_eleve, $_jour ){
        $this->reponse = $this->connexion->prepare('SELECT journee FROM tbl_journeesstage WHERE fk_utilisateur ='. $_eleve .' AND journee = '.$_jour.' ;');
        $this->reponse->execute();
        return $this->reponse->fetch();
        var_dump($this->connexion);
    }


    public function AjouterStage($_eleve, $_jour ){
        $this->reponse = $this->connexion->prepare('SELECT journee FROM tbl_journeesstage WHERE fk_utilisateur ='. $_eleve .' AND journee = '.$_jour.' ;');
        $this->reponse->execute();
        return $this->reponse->fetch();
    }
}


?>