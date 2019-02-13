# Tweeps integration platform

This application is responsible for integrate with the http://tweeps.locaweb.com.br/tweeps.

1. The main feature is list the tweets by some rules.
2. The second main feature is list the tweets by most_relevant.
2. The second main feature is transfer the amount with the existing users.

# Application structure

 # Example

 (localhost:5000/most_mentions) - GET
  - render the tweets by most mentions
  - render by the rules
  - filter by the rules

 (localhost:5000/most_relevants) - GET
  - render the tweets by most relevants
  - render by the the most mentioned user
  - filter by the rules
  - sort by the users

 rules:
 * tweet that mentioned Locaweb user
 * tweet that is not reply for twees from Locaweb

 sort default:
  1. User with more followers
  2. Tweets with more rt
  3. Tweets with more likes

 # Running the application

 Use the `$ iex -S mix phx.server` to run the application.

 # Testing

 Test all suite:

 `$ mix tests`

 # Contributing

 To contribute, please follow some patterns:
  - Commit messages, documentation and all code related things in english;
  - Before open pull requests, make sure that `credo` was executed;

