# Course management

Howdy!

For our next adventure in the world of World-Wide Web we would like to develop an application for managing our Rails course. The next lines describe the key components of this system.

## Lectures
We have many lectures in our system. Every lecture is composed of a name, a text body and many tasks. These tasks are for the students to solve and could be as many as we want.

### Endpoints
* GET /lectures - Lists all lectures in the system.
* GET /lectures/new - Displays form for creating new lecture.
* GET /lectures/42 - Displays lecture 42.
* GET /lectures/42/edit - Edits lecture 42.
* POST /lectures - Creates a new lecture
* DELETE /lectures/42 - Deletes lecture 42.
* PUT/PATCH /lectures/42 - Updates lecture 42.

## Tasks
Every task has a name, description and many solutions.

### Endpoints
* GET /lectures/42/tasks - Lists all tasks for lecture 42.
* GET /lectures/42/tasks/new - Displays form for creating new task for lecture 42.
* GET /lectures/42/tasks/3 - Displays task 3 for lecture 42.
* GET /lectures/42/tasks/3/edit - Edits task 3 for lecture 42.
* POST /lectures/42/tasks - Creates task for lecture 42.
* DELETE /lectures/42/tasks/3 - Deletes task 3 for lecture 42.
* PUT/PATCH /lectures/42/tasks/3 - Updates task 3 for lecture 42.

## Solutions
Every task has many potential solutions sent by our students. We need a way to manage them too. The solution has a text block with the solution in it.

### Endpoints
* GET /lectures/42/tasks/3/solutions - Lists all solutions for tasks 3 in lecture 42.
* GET /lectures/42/tasks/3/solutions/new - Displays form for creating new solution for task 3 in lecture 42.
* GET /lectures/42/tasks/3/solutions/13 - Displays solution 13 for task 3 in lecture 42.
* GET /lectures/42/tasks/3/solutions/13/edit - Edits solution 13 for task 3 in lecture 42.
* POST /lectures/42/tasks/3/solutions - Creates solution for task 3 in lecture 42.
* DELETE /lectures/42/tasks/3/solutions/13 - Deletes solution 13 for task 3 in lecture 42.
* PUT/PATCH /lectures/42/tasks/3/solutions/13 - Updates solution 13 for task 3 in lecture 42.

This time we're not building a REST service so don't forget to add some pretty web views for managing all these endpoints.

Go on and build that thing! (:
