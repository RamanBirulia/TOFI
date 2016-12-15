default:
	@echo ""
	@echo "\033[1mTOFI GraBiLa project Makefile\033[0m"
	@echo ""
	@echo "* clone-backend"
	@echo "* clone-frontend"
	@echo "* clone"
	@echo "* update-backend"
	@echo "* update-frontend"
	@echo "* build-app"

clone-frontend:
	@git clone git@github.com:RamanBirulia/TOFI-frontend.git data/frontend

clone-backend:
	@git clone git@github.com:RamanBirulia/TOFI-Backend.git data/backend

clone:
	@git clone git@github.com:RamanBirulia/TOFI-frontend.git data/frontend
	@git clone git@github.com:RamanBirulia/TOFI-Backend.git data/backend

update-backend:
	rm -rf data/backend
	@make clone-backend
	cd data/backend;\
		npm install

update-frontend:
	rm -rf data/frontend
	@make clone-frontend
	cd data/frontend;\
		npm install

build-app:
	@echo ""
	@echo ""
	@echo "\033[1mMake sure that you install npm, docker and docker-compose\033[0m"
	@echo "for install docker:"
	@echo "--- on linux: https://docs.docker.com/engine/installation/linux/ubuntulinux/"
	@echo "--- on mac: https://docs.docker.com/engine/installation/mac/"
	@echo "--- on windows: https://docs.docker.com/engine/installation/windows/"
	@echo "for install docker-compose:"
	@echo "--- https://docs.docker.com/compose/install/"
	@echo ""
	@echo ""

	@make update-backend
	@make update-frontend
	@docker-compose up

	@echo ""
	@echo ""
	@echo "\033[1mNow you can try to load page 127.0.0.1\033[0m"
	@echo ""
	@echo ""



