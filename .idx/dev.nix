{ pkgs, ... }: {
  channel = "stable-24.05";
  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.python311Packages.setuptools
    pkgs.python311Packages.wheel
    pkgs.python311Packages.numpy
    pkgs.python311Packages.pandas
    pkgs.python311Packages.seaborn
    # --- ZAROORI PACKAGES YAHAN HAIN ---
    pkgs.python311Packages.jupyterlab
    pkgs.python311Packages.ipykernel
  ];
  env = {};
  idx = {
    extensions = [
      "google.gemini-cli-vscode-ide-companion"
      "ms-toolsai.jupyter" # Jupyter ke liye zaroori extension
    ];
    workspace = {
      onCreate = {
        default.openFiles = [ "pandas_files/panda_prac.ipynb" ];
      };
    };
  };
}
