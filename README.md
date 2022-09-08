# rot-13

- Clone the repository
  https://github.com/bhiseweb/rot-13.git

- Ruby Version
  `3.0.3`

- Rails Version
  `7.0.3.1`

- Run
  `bundle install`

- To migrate run command
  `rails db:migrate`

- To start application
  `rails s`

- Hit the api endpoint `http://localhost:3000/conversions` with json parameter
  defined below

  ```
  {
    "conversion":
    {
        "body": "i am leena"
    }
  }

  ```
- The reponse will be something like below response

  ```
  Data has been created and Rot-13 version is v nz yrran

  ```


