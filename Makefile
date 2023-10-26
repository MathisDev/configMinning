install:
		bash config_driver/clean.bash
		bash config_driver/install_apt-file.bash
		bash config_driver/install_segondary_firmware.bash
		bash config_driver/install_Nvidia_Repositery.bash
		bash config_driver/install_Nvidia_Legacy_Drivers.bash
		bash config_driver/install_Nvidia_Drivers.bash

miner:
		@cd py_minning && python3 main.py
	
