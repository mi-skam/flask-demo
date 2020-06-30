with import <nixpkgs> {};

let
  python = import ./requirements.nix { inherit pkgs; };

in
  python38.withPackages (ps: with ps; 
  [ 
    # from nixpkgs
    pylint autopep8 
    # from pypi2nix
    python.packages."flask"
    python.packages."flask-wtf"
    python.packages."flask-bootstrap4"
  ]
  )