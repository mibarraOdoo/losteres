Feature: Adivina la palaba

Scenario: Inicio del juego
When Inicio el juego
Then Veo el titulo del juego "Adivina la palabra" 
And Veo la categoria "Frutas"

Scenario: Ingresar letra
Given Inicio el juego
When Ingreso una letra "a"
Then Veo "a"

