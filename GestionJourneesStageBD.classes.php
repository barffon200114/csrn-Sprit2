<?php
include_once 'Bd.config.include.php';

class GestionJournees {
    var $connexion;
    var $reponse;

    public function __contruct(){
        $this->connexion = new PDO(DNS, UTILISATEUR, MDP);
    }

    public function chercherStage(_eleve, _jour ){
        $this->reponse = $this->connexion->prepare('SELECT date FROM JourneeStage WHERE Etudian ='. _eleve .' AND date = '._jour.' ;');
        $this->reponse->execute();
        return $this->reponse->fetch();
    }

}


?>