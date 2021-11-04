struct Person {
    var name: String
    var age: Int?
}

struct Company {
    var manager: Person?
}

let alice = Person(name: "Alice", age: 32)
let bob = Person(name: "Bob", age: .none)
let company = Company(manager: alice)

// switch

switch alice.age {
case .none:
    print("We don't know")
case let .some(age):
    print("Alice is \(age) years old")
}

// if let

if let ageAlice = alice.age {
    print("Alice is \(ageAlice) years old")
} else {
    print("We don't know")
}

if let ageAlice = alice.age, let ageBob = bob.age, ageAlice > ageBob {
    print("Alice is older than Bob")
}

// ? operator

if let age = company.manager?.age {
    print("The manager is \(age) years old")
}

// Fallback: ?? operator

var managerAge = company.manager?.age ?? 0
print("The manager is \(managerAge) years old")

// Force unwrapping: ! operator
// (this will crash when no age is set)

managerAge = company.manager!.age!
