Feature: Tentando fazer funfar um GET
    Afim de testa uma request 
    como um webservice
    I want a the GET fuckin works
    Scenario: Tentando GET all
        Given I'm in website "https://jsonplaceholder.typicode.com/"
        When I give a GET command
        Then I should receive status code = "200"
@cenario2
    Scenario: Tentando GET num id
        Given I'm in website "https://jsonplaceholder.typicode.com/"
        When I give a GET command with id ="1"
        Then I should receive the title = "sunt aut facere repellat provident occaecati excepturi optio reprehenderit" 
        And I should receive status code = "200"
    
    
        
        
    
    

    