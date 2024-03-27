package main


default allow = false

allow{
    input.action == "read"  
    input.user.authenticated == true
}

allow {
    input.action == "create"
    input.user.role == "admin"
    input.user.authenticated == true
}