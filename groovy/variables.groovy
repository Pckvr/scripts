#!/usr/bin/env groovy
 
//get the current user on the system
String name = System.getenv("USER")
//say hello and a message to the user
def message = "How are you?"
println "Hi ${name}, ${message}"
