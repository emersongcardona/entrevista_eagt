# Task Management System

This project is a test application designed to evaluate proficiency in **Ruby on Rails 7** and **Stimulus.js**, while also showcasing the use of modern Rails features like **Hotwire** and **Turbo Streams**.

## Project Description
The Task Management System allows users to:

- Create, edit, delete, and view tasks.
- Mark tasks as complete or incomplete using a toggle button.

## Features
### Backend
1. **Task Model:**
    - Attributes:
        - `title` (string, required, max length 50 characters)
        - `description` (text, optional)
        - `due_date` (datetime, optional)
        - `completed` (boolean, default: false)
        - `timestamps`

2. **Validations:**
    - `title` must be present and have a maximum length of 50 characters.

3. **Controllers:**
    - `TasksController` with the following actions:
        - `index`: Display all tasks, grouped into **Incomplete** and **Completed** lists.
        - `new` & `create`: Create new tasks.
        - `edit` & `update`: Edit existing tasks.
        - `destroy`: Delete tasks.
        - `toggle_complete`: Toggle a task's `completed` status.

4. **Routes:**
    - Resourceful routing for `tasks`.
    - Custom member route for `toggle_complete`.
    - Root route set to `tasks#index`.
    - Custom route for `completed_tasks`.
    - Custom route for `incomplete_tasks`.

### Frontend
1. **Stimulus Controller:**
    - A `TaskController` is used to handle the toggle functionality.
      - Clicking the "Mark as Complete/Incomplete" button sends an AJAX request to update the task's status.
      - Clicking the "Show/Hide Description" button toggles the visibility of the task's description.

2. **Views:**
    - Simple and semantic HTML for task lists.
    - Partials for rendering tasks.
    - Buttons for actions (edit, delete, toggle status, toggle description).

## Setup Instructions
### Prerequisites
- Ruby 3.3.6
- Rails 7+
- PostgreSQL
- Node.js & Yarn

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/gabrielmonzon39/task-management-system.git
   cd task-management-system
   ```

2. Install dependencies:
   ```bash
   bundle install
   yarn install
   ```

3. Set up the database:
   ```bash
   rails db:create db:migrate
   ```

4. Run the Rails server:
   ```bash
   rails server
   ```

5. Open the application in your browser:
   ```
    http://localhost:3000
   ```

## Evaluation Criteria
### Rails Proficiency
- Proper use of Rails conventions (e.g., resourceful routes, partials, strong parameters).
- Effective use of models, validations, and controllers.

### Stimulus.js Usage
- Clear implementation of the Stimulus controller for interactivity.
- Proper binding of Stimulus actions and targets.

### Code Quality
- Clean, DRY, and well-organized code.
- Clear commit messages.

### Bonus (Optional)
- Add pagination to the task lists.

## Deliverables
1. A GitHub repository with the project code.
2. A README file explaining how to set up and use the application.

Good luck and happy coding!