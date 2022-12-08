Feature: Logowanie do aplikacji

  Jako uzytkownik chce miec funkcjonalnosc
  logowania do aplikacji aby moc korzystac
  z zaawansowanych funkcji systemu


  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje poprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostaje poprawnie zalogowany do aplikacji


  Scenario: Poprawne logowanie do aplikacji - wersja druga
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wpisuje login "tomsmith"
    And Uzytkownik wpisuje haslo "SuperSecretPassword!"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostaje poprawnie zalogowany do aplikacji


  Scenario: Niepoprawne logowanie do aplikacji
    Given Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje niepoprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji


  Scenario: Niepoprawne logowanie do aplikacjo vol2
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wpisuje login "tomsmith"
    And Uzytkownik wpisuje haslo "blabla"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

  Scenario: Niepoprawne logowanie do aplikacjo vol3
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wpisuje login "blablabla"
    And Uzytkownik wpisuje haslo "SuperSecretPassword!"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji


  Scenario Outline: Niepoprawne logowanie vol4
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wpisuje loginek <loginek>
    And Uzytkownik wpisuje haselko <haselko>
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

    Examples:
      | loginek  | haselko              |
      | tomsmith | blabla               |
      | blabla   | SuperSecretPassword! |

    @now


