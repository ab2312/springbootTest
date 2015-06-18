package springBoot;

import static org.hamcrest.Matchers.containsString;
import static org.junit.Assert.assertThat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hamcrest.Matchers;
import org.junit.Assert;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.OutputCapture;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.WebIntegrationTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.csst.Application;
import com.csst.hotelCrawler.dao.HotelCommentDao;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@WebIntegrationTest
public class testOther {	
	@Autowired
	private HotelCommentDao dao;

	@Rule
	public OutputCapture capture = new OutputCapture();
	
	@Test
	public void testHamcrest(){
		System.out.println("12323");
		assertThat(capture.toString(), containsString("123"));
		//50是否大于20
		Assert.assertThat(50, Matchers.greaterThan(20));
		//50是否大于或等于50
		Assert.assertThat(50, Matchers.greaterThanOrEqualTo(50));
		//50是否即大于20又小于60(allOf方法类似于Java中的&&)
		Assert.assertThat(50, Matchers.allOf(Matchers.greaterThan(20), Matchers.lessThan(60)));
		//50是否大于20或小于40(anyOf方法类似于Java中的||)
		Assert.assertThat(50, Matchers.anyOf(Matchers.greaterThan(20), Matchers.lessThan(40)));
		//测试"abc.txt"是否以"txt"结束
		Assert.assertThat("abc.txt", Matchers.endsWith("txt"));
		Assert.assertThat("abc.txt", Matchers.startsWith("ab"));
		Assert.assertThat("abc.txt", Matchers.containsString("c.t"));
		Assert.assertThat(22+"aa", Matchers.hasToString("22aa"));
		Assert.assertThat("blog.csdn.net/jadyer", Matchers.instanceOf(String.class));
		Assert.assertThat("blog.csdn.net/jadyer", Matchers.notNullValue());
		Assert.assertThat(null, Matchers.nullValue());
		//针对集合的测试
		String[] users = {"玄玉", "Jadyer"};
		Assert.assertThat(users, Matchers.hasItemInArray("玄玉"));
		Map<String, String> userMap = new HashMap<String, String>();
		userMap.put("11", "玄玉");
		userMap.put("22", "Jadyer");
		userMap.put("33", "blog.csdn.net/jadyer");
		Assert.assertThat(userMap, Matchers.hasKey("22"));
		Assert.assertThat(userMap, Matchers.hasValue("blog.csdn.net/jadyer"));
		
	} 
	
	@Test
	public void testDbconnect(){
		List<String> queryExistHotelId = dao.queryExistHotelId();
		for (String string : queryExistHotelId) {
			System.out.println(string);			
			
		}
		
		assertThat(queryExistHotelId,Matchers.notNullValue());
	}
	
}
