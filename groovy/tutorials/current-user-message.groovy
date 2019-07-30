#!/usr/bin/env groovy

String formatMessageForCurrentUser(String message) {
    "Hi ${System.getenv("USER")}, ${message}"
}
println formatMessageForCurrentUser("how are you?")

