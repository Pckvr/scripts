#!/usr/bin/env groovy

//Create
def simpleClosure = {
    println "Hi"
}
//Execute
def simpleClosure = {
    println "Hi"
}
// using ()
simpleClosure()
// using the call() function
simpleClosure.call()

//Parameters
// one parameter
def singleParamClosure = { param -> {
    println "${param}"}
}
// two parameters
def multiParamClosure = { param1, param2, param3 -> {
    println "${param1}, ${param2}, ${param3}"}
}

//Implicit it Parameter
def myClosure = {
    println "Hello from myClosure"
}

void myFunction(exec) {
    exec()
}

myFunction myClosure

// Hello from myClosure

//each Function Example
def students = ["bob", "jay", "shafeeq", "dev"]

students.each {
    println it
}

//find Function Example
def students = ["bob", "jay", "shafeeq", "dev"]

def numberOne = students.find {
    it.equals "shafeeq"
}

println numberOne
