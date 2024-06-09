let
  greet = greeting: name: "${greeting}, ${name}";
in
  greet "Hello" "John"
