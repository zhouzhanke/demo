package demogateway.demogateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class DemogatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemogatewayApplication.class, args);
    }

}
