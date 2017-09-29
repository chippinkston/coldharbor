component extends="lib.framework.one" output="false" {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

	// FW/1 settings
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'default',
		generateSES = false,
		SESOmitIndex = false,
		diEngine = "di1",
		diComponent = "lib.framework.ioc",
		diLocations = "model, controllers",
        diConfig = { },
        routes = [ ]
	};

	public void function setupSession() {  }

	public void function setupRequest() {
		if(structKeyExists(url, 'reload')){
			reloadApplication();
		}
	}

	public void function setupView() {  }

	public void function setupResponse() {  }

	public void function onError( any exception, string event ){
		dump(this);
		dump(this.getDefaultBeanFactory().getBeanInfo());
		dump(variables.framework);
		dump(exception);
		dump(event);
		abort;

	}

	public void function reloadApplication(){
		onApplicationStart();
	}

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found.";
	}
}
