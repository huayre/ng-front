create-app:
	@echo create image
	@docker build -t huayre/angular:1.0 .
	@echo generate container  
	@docker run -dit -p 4200:4200 -v $(PWD)/app:/app --name "app-angular" huayre/angular:1.0
run-app:
	@docker start app-angular
	@docker exec -ti app-angular sh
#	@ng serve --host 0.0.0.0
