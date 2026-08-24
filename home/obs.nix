{ pkgs, ... }: {
  programs.obs-studio = {
    enable = true;
    # This override explicitly unlocks your RTX 3060 NVENC chip
    package = pkgs.obs-studio.override {
      cudaSupport = true;
    };
  };
}
