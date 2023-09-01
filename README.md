# README
# How to run:
1. Make sure you are in the Project-6-Runtime-Terrors directory
2. Run `bundle install`
3. Open a terminal and enter `bin/rails server`
4. Follow the link it provides to the P.E. 3000 homepage.

# Extra Details:
- Ruby Version 3.1.2
- Sqlite3 Version 1.4

# Test Plan:
Test devise by trying different emails with the same first name, last name, and both

Test the same dot number in the email to ensure no duplicate users are made

Test if users can register as both a student and an admin

Test if users can edit their profile multiple times 

Test if users can save their login information using their web browser

Test if admins can create multiple of the same class

Test if admins can interact with other admins classes 

Test if admins can interact with student evaluations 

Test if admins can create a new team and add members

Test if admins can remove existing members from a team

Test if admins can delete an existing team

Run compiled HTML files through the W3 validator to check for warnings/bugs


# Team Presentation :
https://docs.google.com/presentation/d/1XNoNiSESiqn5Xlt-39WzLvKkjOkZixMm-NV29j5mfEc/edit?usp=sharing

# Members

Ross Imbrock

Alex Echanove

Joel Varughese

Charles Kluznik  

David Paquin



# Sprint #1 (11/18/22)
### Core Functionality 

Ross - Create student rating based on user input / Make specific team member questions and devise login page

David - Student class, admin class, and course class (linked to SQL) 

Alex - Create the professor landing page and devise login algorithm 

Joel - Create page for student evaluation form, nav bar to switch between pages

Charles - Group creation and editing, group views by professor and students


### Extra Functionality

Ross - CSS/styling of the main page and login page

David - Landing/sign-in page and footer with CSS styling

Alex - CSS/styling of professor page

Joel - CSS styling of student evaluation form

Charles - CSS/Styling of group views


# Sprint #2  (11/29/22)
### Core Functionality

Ross - created the student evaluation form with all questions, working buttons, and response prompts

David - Worked on students, login, admins, and database

Alex - Worked on devise login and linking it to rails and professor admin page

Joel - Created the homepage for the project and navbar, along with the CSS styling

Charles - Worked on teams and courses

# Sprint #3 (Presentation) (12/03/22)

Ross - coded, created slides for and presented on the evaluation models

David - created ER diagram,  coded, created slides for and presented on students model, and profile page. Presented on SASS

Alex -  coded, created slides for and presented on Devise, and created states diagram. Presented on user model and navbar as well

Joel -  coded, created slides for and presented on courses model, and presented on diagrams

Charles -  coded, created slides for and presented on teams model, and routes.rb. Wrote SASS color options for everyone

# Final Contributions (12/07/22)
#### Ross
Wrote all questions for the student forms

Created Project Evaluation Model

Created Project Evaluation View

Created controller code for project evaluation to include index, show, new, create, edit, update, destroy functions.

Created form partial to be used with new function for project evaluation form responses and create for the submission

Used bootstrap for project evaluation questions

Created multiple choice with radio buttons question type for project evaluation

Created short answer question type for project evaluation

Made landing page for project evaluation to warn student it is confidential

Linked project evaluation to the database with a respective team id

Allowed admin to view all project evaluations with show function

Let users delete or edit project evaluation with delete and edit functions

Added project evaluation student landing page to navbar

Created controller code for tech task evaluation to include index, show, new, create, edit, update, destroy functions.

Created form partial to be used with new function for tech task evaluation form responses and create for the submission

Used bootstrap for tech task evaluation questions

Created multiple choice with radio buttons question type for tech task evaluation

Created short answer question type for tech task evaluation

Made landing page for tech task evaluation to warn student it is confidential

Linked tech task evaluation to the database with a respective team id

Allowed admin to view all tech task evaluations with show function

Let users delete or edit tech task evaluation with delete and edit functions

Added tech task evaluation student landing page to navbar

Created the evaluations model

Created the evaluations view on the admin side for both tech task and project reports

Made evaluation CSS file for both project evaluation and tech task evaluation

Created slides and presented on both project model and tech task model


#### David
Created Student Model

Created Admin Model

Created Courses Model

Made migrations to set constraints and relationships in the database for each model

Wrote controller code for the Students controller to represent the corresponding routes

Wrote controller code for the Admin controller to represent the corresponding routes

Created the embedded ruby html and css for the footer partial

Created the profile page for Students

Added functionality for Students to delete their account

Created the profile page for Admins

Added functionality for Admins to edit 

Added functionality for Admins to delete their account

Used SASS to style the footer, student viewing profile, admin viewing profile, and admin editing profile pages

Added logic for the corresponding User entry to be removed from the database when an Admin decides to delete their account

Added logic for the corresponding User entry to be removed from the database when an Student decides to delete their account

Overrode the Devise RegistrationController code so that when a new user was registered, a corresponding Student or Admin entry was made into the Model along with the User entry that Devise already does

Used SQL querying in the navbar so that the Profile button leads to the corresponding Student/id page or Admin/id page depending on if the User currently logged in is a Student or Admin


#### Alex
Implement the devise feature with ruby on rails

Implement the route to the landing page 

Implement route for devise

Added devise view and controllers

Created the devise registration page to allow for more details: first name, last name, name dot number, and role: student or admin

Created the devise CSS view for devise registration using bootstrap and  javascript to allow for different views if admin or student is logged in

Created the login page for devise

Created the CSS page for devise login page

Had the user have a role when creating a new user

Roles were used for implementing users to student or admin table

Created roles as integer values

Implemented a controller for users that, when calling for a user role, would print a string of student or admin instead of the integer value of the role

Made migrations for new columns to the users: first name, last name, name dot number, and role

Added devise features to the Navbar depending on whether the user is logged in or out

When logged out, the navbar shows a login or register option if signed out

As a student, the navbar shows webpage options when signed in as students

As an adminWill have admin webpages options when signed in as an admin

Used routes to redirect from the navbar an all pages of the website

Used javascript and bootstrap for the navbar to enable a cleaner look

Edited the landing page HTML doc to show user information

When logged in as a student will show name, email, role, and student id

As an admin will show the admin name, email, role, and admin id

Lastly, while not logged in will redirect attention to the navbar


#### Joel
Modified Courses model to include validation for attributes of the courses. 

Wrote controller code for Courses to remove teams that are part of a course when a course is removed

Controller code for courses include index, show, new, edit, create, update, and destroy methods

Created landing page and css for it

Created css styling for navbar

Created html for Courses view

Added embedded ruby code to output teams and their respective students that are part of each course

Created SCSS stylesheets for the courses page which included common colors from common SCSS stylesheet

Utilized bootstrap for styling of courses view

Modified controller code so that the user can still input new courses even on invalid input 

Created slides on the Courses MVC during presentation


#### Charles
Created Teams model

Created Teams/Student n to m join table

Created custom routes for adding and removing members from a team (GET and POST routes)

Created migrations to update the attributes of Team records

Created Teams page with view for creating a team, modifying team members, and deleting a team

Created HTML form with embedded ruby for creating a team and modifying team members with drop downs for the foreign keys to prevent invalid foreign key violations

Created SCSS stylesheets for the teams page using pseudo-classes, common colors/fonts used across the app, and fixed various styling elements on landing page

Wrote controller code for the Team controller to allow for adding team members, checking for duplicate POST requests containing the same members, and reporting success/errors to the user

Wrote controller code for the Team controller to allow for removing team members, ensuring the team member was already a part of the team, and reporting success/errors to the user

Created SQL queries to load lists of team members into the team member list and into drop-down menus in the forms