{ config, pkgs, ... }:

{
  services.tlp = {
    enable = true;
    settings = {
  
      # CPU
      CPU_SCALING_GOVERNOR_ON_AC = "powersave";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  
      CPU_ENERGY_PERF_POLICY_ON_AC = "powesave";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
  
      CPU_BOOST_ON_AC = 0;
      CPU_BOOST_ON_BAT = 0;
  
      # Limita desempenho máximo na bateria (0–100)
      CPU_MAX_PERF_ON_BAT = 60;
  
      # DISCO
      DISK_DEVICES = "nvme0n1 sda";
      DISK_APM_LEVEL_ON_BAT = "128 128";
      DISK_APM_LEVEL_ON_AC = "254 254";
  
      # USB
      USB_AUTOSUSPEND = 1;
      USB_EXCLUDE_PRINTER = 0;
  
      # PCIe
      PCIE_ASPM_ON_BAT = "powersupersave";
      PCIE_ASPM_ON_AC = "powesave";
  
      # ÁUDIO
      SOUND_POWER_SAVE_ON_BAT = 1;
      SOUND_POWER_SAVE_CONTROLLER = "Y";
  
      # TELA / BACKLIGHT
      INTEL_GPU_MIN_FREQ_ON_BAT = 300;
      INTEL_GPU_MAX_FREQ_ON_BAT = 900;
  
      START_CHARGE_THRESH_BAT0 = 70;
      STOP_CHARGE_THRESH_BAT0 = 80;
  
    };
  };
}  
