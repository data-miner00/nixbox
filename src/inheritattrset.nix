let
  x = 77;
  y = 88;
  z = 99;
  my-property = { a = 1; b = 2; c = 3; };
in
{
  # Equivalent to x = x; y = y; z = z;
  inherit x y z;

  # Equivalent to a = my-property.a; b = my-property.b; ...
  inherit (my-property) a b c;
}
