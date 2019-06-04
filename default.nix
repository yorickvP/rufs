with import <nixpkgs> {};
buildGoModule rec {
  name = "rufs-${version}";
  version = "0.1";
  src = ./.;
  modSha256 = "11p6m2qxci85447q20qd1ivayzfyrmi08cd927a3c0cfmir82hrn";
  buildFlags = "--tags bolt";
}
