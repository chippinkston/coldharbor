component accessors=true displayname="Docker Host" hint="Object to represent a remote docker host" {
	property name="protocol";
	property name="host";
	property name="port";
	property name="certificate";

	public any function init(){
		return this;
	}

}
