package polymorphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		// 1.spring 컨테이너 구동
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		// 2.spring 컨테이너로부터 필요한 객체 요청 <bean id="tv" class="polymorphism.SamsungTV"></bean>
		TV tv = (TV)factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		// 3.spring 컨테이너 종료X
		factory.close();
/*		
		BeanFactory factory1 = new BeanFactory();
		TV tv1 = (TV) factory1.getBean(args[0]);
		tv1.powerOn();
		tv1.volumeUp();
		tv1.volumeDown();
		tv1.powerOff();j
		
		
		SamsungTV tv11 = new SamsungTV();
		tv11.powerOn();
		tv11.volumeUp();
		tv11.volumeDown();
		tv11.powerOff();
		
		LgTV tv12 = new LgTV();
		tv12.powerOn();
		tv12.volumeUp();
		tv12.volumeDown();
		tv12.powerOff();
		
*/
		
	}

}
