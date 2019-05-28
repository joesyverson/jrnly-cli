# TO-DO JOURNAL
### this came as a suggestion in the project `README`, but I think because the idea is so basic, we can really flesh out it's functionality and even make it look really nice

* `a to-do list and journal that keeps track of`
  - things to do
  - any notes on a given day

* `things to do class`
  - a to-do entry can be entered on a specific date or reappear every day until marked complete
  - `some attributes`
    - title
    - description
    - link
    - map
    - complete? (boolean set to false when the to-do item is made)
    - priority (must be done on given date)


        `27 MAY 2019` | Joseph Syverson
        -----------------------------------------------------------
        `DID`                       `UNDONE`
        = pay rent                  = Laundry
        = finished Active Record    = Food shopping
        labs                        = Brainstorm about Mod 1
                                    project


* `notes class`
  - any note entered on a given day stays on that day, acting as a journal entry
  - `some attributes`
      - title
      - body
      - date
      - link
      - photo

* `to-do_notes join`
  - a user can pull up any given day or group of days from the current day to the past and get a readout of `column of what they were thinking (notes)` and `column of what they did` and `column of what they left undone`
  - for example, at the end of the day the output for the day may look like


        `27 MAY 2019` | Joseph Syverson
        -----------------------------------------------------------
        `NOTES`                   `DID`                      `DO`
        = Visited cousins in      = Pay rent                 = Laundry
        LI today instead of       = Finished Active Record   = Food shopping
        locking myself in my      labs                       = Brainstorm about
        and studying. Good idea                               Mod 1 project
        = Spoiling a good time
        worrying about the
        future of the human
        race
        = Gonna be a long, hot
        summer


    - when I pull up my to do list for tomorrow


        `28 MAY 2019` | Joseph Syverson
        -----------------------------------------------------------
        `NOTES`                   `DID`                     `UNDONE`
                                                             = Laundry
                                                             = Food shopping
                                                             = Brainstorm about Mod
                                                              1 project


# ADD-ONS
  - if we can get the basics in order, we can work on add-ons, like importing quotes or news headlines. To do this, we might be able to scrape a Twitter account or something
  - maybe a budgeting section, that records how much money you spent that day?
  - a third class that is just a shopping list?
