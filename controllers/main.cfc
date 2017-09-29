component name="main" output=false accessors=true {
	property DockerHostService;

	public void function default(struct rc = {}) {
		param name="rc.skeletonType" default="Basic FW/1 Skeleton";
		rc.dh = DockerHostService.createHost();
	}
}
