# pretend this is `flake.nix`
# Running `nix eval .#foo` will yield "bar" as the output.
{
  outputs = { self }: {
    foo = "bar";
  };
}
