install:
	@echo "Change DIR"
	mkdir /minning
	mv * /minning/
	@echo "INSTALL DEMON"
	bash /minning/demon/config/miner.service
	chmod 777 /minning/demon/t-rex && /minning/demon/t-rex_cfx.sh
	@echo "Delet tmp dir"
	cd ../ && rm -fr configMinning
