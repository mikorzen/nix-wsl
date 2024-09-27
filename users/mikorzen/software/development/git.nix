{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "mikorzen";
    userEmail = "michal.korzen-tech@pm.me";
    extraConfig = {
      credential.helper = "${
        pkgs.git.override { withLibsecret = true; }
      }/bin/git-credential-libsecret";
    };
  };
}
