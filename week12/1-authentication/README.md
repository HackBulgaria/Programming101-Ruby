# Authentication

Authentication is fundamental for a web application. Now is the time to implement one.

## Sign up

We need a page with a sign up form so the users of our application could provide authentication credentials. This page displays input fields for first name, last name, email, passsword and password confirmation.

Submitting the sign up form creates a new user with the specified credentials in the application.

## Sign in

The sign in form displays input fields for email and password. It also includes a "Remember me" checkbox.

Submitting the sign in form authenticates the user and takes him to the welcome page (if the credentials are valid).

## Welcome

The welcome page displays some information about the authenticated user along with a link for signing out.

## Validation

Make sure to validate your forms and display proper error messages.

# Remember me

Enabling the remember me option during authentication the user session should be persisted across browser restarts, etc..

## NO SCAFFOLDING!

Please (:

## Hints

Somebody shushed me about `ActiveRecord::Base#has_secure_password` and
`ActionController::Base#cookies`!
