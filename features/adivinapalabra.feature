Feature: Adivina la palaba

Scenario: Inicio del juego
When Inicio el juego
Then Veo el titulo del juego "Adivina la palabra" 
And Veo la categoria "Frutas"

Scenario: Ingresar letra
Given Inicio el juego
When Ingreso una letra "a"
Then Veo "a"

Scenario: Validar letra	
Given Inicio el juego
When Como la palabra es manzana e Ingreso una letra "a"
Then Veo Resultado "La letra esta en la palabra"

When Como la letra "b" no esta en Manzana
Then Veo en intentos "6"

