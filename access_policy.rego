package main


default allow_create_user = false
default allow_read_users = false

allow_read_users {
    input.action == "read"  
    input.user.authenticated == true
}

allow_create_user {
    input.action == "create"
    input.user.role == "admin"
}