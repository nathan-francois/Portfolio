<?php

function utilisateurs1() {
	$utilisateur1 = ["Nathan" => "meilleur developpeur of the World",
					"Tom" => "suce",
					"Alain" => "gros con"];

	return $utilisateur1;
}

function utilisateurs2() {
	$utilisateurs2 = [["nom" => "francois", "prenom" => "nathan", "race" => "homme"], 
				["nom" => "fougerolle", "prenom" => "alain", "race" => "homme"], 
				["nom" => "martin", "prenom" => "tom", "race" => "homme"]];
	
	return $utilisateurs2;
}