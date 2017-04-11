package global.sesoc.boot.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import javax.sound.sampled.UnsupportedAudioFileException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import global.sesoc.boot.Exception.SoundFileNotFoundException;
import global.sesoc.boot.vo.MusicSource;

@Service
public class URLGenerator {

	@Autowired
	ServletContext servletContext;

	private Map<String, MusicSource> map;
	private String dirName = "";

	@PostConstruct
	public void init() {
		map = new HashMap<>();
		subDirList(servletContext.getRealPath("/resources/musicSources/"));
	}

	public void subDirList(String source) {
		File dir = new File(source);
		File[] fileList = dir.listFiles();
		try {
			for (int i = 0; i < fileList.length; i++) {
				File file = fileList[i];
				if (file.isFile()) {
					String fileName = deleteExtension(file.getName());
					map.put((dirName + fileName).toLowerCase(), new MusicSource(file));
				} else if (file.isDirectory()) {
					dirName = file.getName();
					subDirList(file.getCanonicalPath().toString());
				}
			}
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} catch (UnsupportedAudioFileException e) {
			System.out.println(e.getMessage());
		}
	}

	private String deleteExtension(String fileName) {
		return fileName.substring(0, fileName.indexOf("."));
	}

	public double getBPM(String key) throws SoundFileNotFoundException {
		MusicSource musicSource = map.get(key);
		if (musicSource == null)
			throw new SoundFileNotFoundException();
		return musicSource.getBpm();
	}

	public String getFilePath(String key) throws SoundFileNotFoundException {
		MusicSource musicSource = map.get(key);
		if (musicSource == null) {
			throw new SoundFileNotFoundException();
		}
		return musicSource.getFilePath();
	}

}
