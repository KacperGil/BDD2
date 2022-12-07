Feature: Logowanie do aplikacji

  Jako uzytkownik chce miec funkcjonalnosc
  logowania do aplikacji aby moc korzystac
  z zaawansowanych funkcji systemu

  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik otwiera przegldarke
    And Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje poprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostaje poprawnie zalogowany do aplikacji

  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik otwiera przegldarke
    And Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje niepoprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji