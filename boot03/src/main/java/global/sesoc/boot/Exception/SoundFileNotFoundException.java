package global.sesoc.boot.Exception;

public class SoundFileNotFoundException extends Exception {
	@Override
	public String getMessage() {
		return "The sound file you submit has been violated by not found exception.\nWatch our document.";
	}
}
