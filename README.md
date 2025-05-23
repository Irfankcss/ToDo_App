# TODO List - Ruby on Rails App
![image](https://github.com/user-attachments/assets/f85d32b5-b477-4d06-ba1b-2ba16d58437f)


A simple and clean TODO list application built with Ruby on Rails.  
The app allows users to manage their tasks efficiently with features like:

- Add new tasks
- Edit existing tasks
- Delete tasks
- Mark tasks as done or not done
- Filter tasks (All / Done / Not Done)
- Sort tasks by creation date (Newest / Oldest)

---

## Technologies

- Ruby on Rails
- SQLite3 (for local development)
- Bootstrap 5

---

## Installation

To run the app locally, follow these steps:

```bash
git clone https://github.com/Irfankcss/ToDo_App.git
cd ToDo_App
bundle install
rails db:migrate
rails db:seed
rails server
