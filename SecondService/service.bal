import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "SecondService",
	id: "SecondService-df8c5ee7-bce9-4825-b2e0-b6f8a63eb9ce"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
