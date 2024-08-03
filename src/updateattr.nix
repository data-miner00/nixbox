let
  setA = { a = 1; c = 5; };
  setB = { b = 53; c = 0; };
in
  /*
   * Updates the properties of setA with the ones from setB.
   * Add the properties if not exist.
   * Same as JavaScript `{ ...setA, ...setB }`
   */
  setA // setB # { a = 1; b = 53; c = 0; }
