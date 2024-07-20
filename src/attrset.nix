let
  # Using descructuring and select the variable of interest
  # If not specify ... it will error out
  createSecret = { key, secret, ... }: {
    # To have dynamic keys, need to encapsulate into ${}
    # Optionally can have double quotes enclosed too: "${}"
    ${key} = secret;
    
    # The key can be interpolated as well
    "mykey:${key}" = secret;

    # Shortform for X = X
    inherit key;
  };
in
  createSecret { key = "mykey"; secret = "mysecret"; other = false; }

