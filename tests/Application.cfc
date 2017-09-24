component {

	this.name = 'coldharbor-tests';


	public void function setupRequest() {
		if(structKeyExists(url, 'reload')){
			echo('FUCK');
			abort;
			//reloadApplication();
		}
	}

	private void function reloadApplication(){
		dump(application);
		echo('Application reloaded');
		onApplicationStart();
		echo('Application reloaded');
	}
}
