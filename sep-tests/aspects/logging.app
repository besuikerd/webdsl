module logging

imports
  main

extend entity Entry {
  
  accesses :: Int
  lastAccess :: String

  extend function write() {
    accesses := accesses + 1;
    lastAccess := "now";
    
    title := "zyx";
  }
  
}