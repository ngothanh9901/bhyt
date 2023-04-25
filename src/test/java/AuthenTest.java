import com.example.bhxh.controller.AuthenServlet;
import com.example.bhxh.model.User;
import com.example.bhxh.service.AuthenService;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.junit.Assert.assertNull;
import static org.junit.jupiter.api.Assertions.assertNotNull;

public class AuthenTest {
    @Mock
    HttpServletRequest request;

    @Mock
    HttpServletResponse response;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testUsernamePasswordIsRight() throws IOException, ServletException {

        String username = "ngothanh9901";
        String password = "123456789";
        AuthenService authenService  = new AuthenService();
        User user = authenService.login(username, password);
        assertNotNull(user);

    }

    @Test
    public void testUsernamePasswordLeft(){
        String username = "ngothanh9901";
        String password = "1234567809";
        AuthenService authenService  = new AuthenService();
        User user = authenService.login(username, password);
        assertNull(user);
    }

    @Test
    public void testSqlInject(){
        String username = "\"OR 1=1";
        String password = "\" OR 1=1 ";
        AuthenService authenService  = new AuthenService();
        User user = authenService.login(username, password);
        assertNull(user);
    }
}
