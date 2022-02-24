import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Karate.class)
@CucumberOptions(
        features= "src/test/java/features",
        plugin = {
                "pretty:target/prettyReport.txt", "html:target/cucumber", "json:target/cucumber.json", "rerun:target/rerun.txt",
                "junit:target/junit-report.xml", "testng:target/testng-output.xml"
        },
        tags={"@newpet"} // just one tag in runner file
//        tags={"@Login","@Regression","~@ignore"} // representing multiple tags in Test runner file

)
public class TestRunner {
}
