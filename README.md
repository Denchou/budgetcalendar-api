# Budget Calendar Front End client
* Repo for the Client: [Budget Calendar Client Repo](https://github.com/Denchou/budgetcalendar-client)
* Deployed Client Site: [Budget Calendar Deployed Client](https://denchou.github.io/budgetcalendar-client/)
* Deployed Server Site: [Budget Calendar Deployed Heroku](https://morning-river-44732.herokuapp.com/)

Created with the following technology stack:

* React.js
* bootstrap
* Ruby on Rails
* dateFns [DateFns Site](https://date-fns.org/) installed with 'npm install date-fns --save'
* Axios [Axios Site](https://www.npmjs.com/package/axios) installed with 'npm install axios'
* Sass

## About the Budget calendar

The budget calendar allows a user to sign up for an account, open a calendar, add/delete new Expense
and income. A user will be able to view how much money they have on a specific, selected date as
well as view a total expense and income to date that updates in real time as user switches dates.

## SET UP AND INSTALLATION

None required

### ERD
Preliminary ERD: [Imgur](https://i.imgur.com/TPcvJkK.png)

### ROUTES
| Verb   | URI Pattern            | Controller#Action        |
|:-------|:-----------------------|:-------------------------|
| GET    | `/transactions`        | `transactions#index`     |
| GET    | `/transactions/:id`    | `transactions#show`      |
| POST   | `/transactions`        | `transactions#create`    |
| PATCH  | `/transactions/:id`    | `transactions#update`    |
| DELETE | `/transactions/:id`    | `transactions#destroy`   |


### Planning

I went towards the project with an idea of creating an interactive calendar that
keeps track of budgets in real time as well as keep an eye on static assets. An
ideal situation was to allow the user to create an Asset that changes in value
that can be tracked through a third-party API such as cryptocurrency.

Unfortunately due to time constraints, I was not able to finish it. I had just
learned React.js a week before tackling the project so I was very new to the philosophy
of React and Components.

On the first day I created the neccessary resource in my API, tested the routes,
and ensured they work before deploying them. I researched how to implement a calendar
, thought about using React-Calendar, by the end of the day I realized React-Calendar
was not robust enough to allow me to do what I need.

On the second day I researched online to find alternative methods to implement a
calendar in react and learned about dateFns. There was a tutorial that I followed
to create a blank calendar using React components. Using dateFns, I was able to create
a usable, clickable calendar component which can keep track of dates.

Later I tested the Authentication on my client to ensure it worked before creating
React Components to allow me to Create, Update, Edit and Delete resources to the API
using Axios. I quickly realized the end result of my App will not be as exactly
as I planned with my Wireframe and ERD due to time constraints and using a new Technology.

I spent a lot of time researching on google and stackoverflow about the proper way
to use the Components and fell into a lot of traps. A lot of time was spent
trying to transfer over the props the correct way through react-routers.

On the third day I meshed together Components and was able to get the props
I need to to allow Authenticated user to properly CRUD resources. I spent
the whole third day linking the transaction resources to work with the calendar
UI, added some styling and was able to successfully create a MVP.

The fourth day I spent a lot of time trying to refactor and style. I understand
that I need to lift up my state to keep my code DRY but ran into a few issues
that was not able to be solved by the time I ran out of time. I spent some time
completing validations on my API end to ensure no invalid values were able to be
sent in with a cURL script.

### BUGS AND FUTURE UPDATES

* I have a few codes in my React Component that can be refactored by lifting up the state
* In the future I will want to implement the Asset resource by researching third-party APIs
* Currently clicking on a date in the calendar only displays the total value for that day
* Future iterations would allow users to see if a certain expense/income occured that day
