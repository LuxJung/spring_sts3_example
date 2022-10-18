package polymorphism;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV{
	
	//@Resource(name="apple") 잦은 변경이 일어날 경우 xml로 사용하자
	@Autowired
	private Speaker speaker;
	
	public LgTV() {
		System.out.println("===> LgTV --- 객체 생성");
	}
	
	@Override
	public void powerOn() {
		System.out.println("Lg TV --- 전원 켠다.");
		
	}

	@Override
	public void powerOff() {
		System.out.println("Lg TV --- 전원 끈다.");
		
	}

	@Override
	public void volumeUp() {
		speaker.volumeUp();
		
	}

	@Override
	public void volumeDown() {
		speaker.volumeDown();
		
	}

//	public void turnOn() {
//		System.out.println("Lg TV --- 전원 켠다.");
//	}
//
//	public void turnOff() {
//		System.out.println("Lg TV --- 전원 끈다.");
//	}
//
//	public void soundUp() {
//		System.out.println("Lg TV --- 소리 올린다.");
//	}
//
//	public void soundDown() {
//		System.out.println("Lg TV --- 소리 내린다.");
//	}

}
