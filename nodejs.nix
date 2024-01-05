{
  buildNpmPackage,
  lib,
}:
buildNpmPackage {
  pname = "graphql-schema";
  version = "1.0.0";

  src = lib.cleanSource ./.;

  npmDepsHash = "sha256-oXWk6WO0ebJL9d8TcER+T1XJ16nEPHUVHVLsYhDvqRE=";

  npmPackFlags = [ "--ignore-scripts" ];
}
