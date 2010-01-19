Feature: view pages
    In order to love the website
    As a viewer
    I want to see a beautiful pages

    Scenario: visit root_page
        Given I am on the home page 
        Then I should see "Главная страница"

    Scenario: visit on arhitectura page
        Given I am on the arhitectura page
        Then I should see "Сателлит может "

    Scenario: visit on detail page
        Given I am on the detail page
        Then I should see "Описание системы"
    
    Scenario: visit on price page
        Given I am on the home page
        When I follow "Цены"
        Then I should see "Гарантия возврата денег за Nodeny 50!"
    
    Scenario: visit on policy page
        Given I am on the home page
        When I follow "Скачать"
        Then I should see "Лицензионное соглашение"
            And I should see "ICQ: 120790571"

    Scenario: visit on demo page
        Given I am on the home page
        When I follow "Демо версия"
        Then I should see "demo/demo"
            And I should see "superadmin/super"

    Scenario: visit on sale page
        Given I am on the sale page
        Then I should see "Покупка"
        And I should see "Реквизиты для оплаты"
        And I should see "Офицальные представители"
        And I should see "Выписать счет"

    Scenario: visit on changelog page
        Given I am on the changelog page
        Then I should see "Список изменений"

    Scenario: test aminet 
        Given I am on the aminet page
        When I insert aminet address "255.255.255.1"
        Then I should see "Aminet"

    Scenario: visit on get49 page 
        Given I am on the policy page
        When I check "accepter"
        And I go to get49
        Then I should be redirected to "http://code.google.com/p/nodeny49/downloads/list"

    Scenario: redirect to twitter
        Given I am on the home page
        Then I should see "Твиттер"
    
    Scenario: show contacts 
        Given I am on the home page
        When I follow "Наши контакты"
        Then I should see "icq: 44306843"
            And I should see "+380 (97) 9102264 Киевстар"

    Scenario: show invoice link
        Given I am on the home page
        When I follow "Кyпить!"
        Then I should see "Выписать счет"
    Scenario: show invoice form
        Given I am on the home page
        When I follow "Кyпить!"
        And I follow "Выписать счет"
        Then I should see "Cчет на покупку"

