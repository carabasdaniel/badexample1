package policies.test.goodbye

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false

allowed {
    input.role == "admin"
}

enabled {
    visible
}

visible {
    input.app == "viewer"
}
