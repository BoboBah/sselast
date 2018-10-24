package sn.alien.sseapp;

import com.itextpdf.text.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.ISpringTemplateEngine;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.thymeleaf.spring5.templateresolver.SpringResourceTemplateResolver;
import org.thymeleaf.spring5.view.ThymeleafViewResolver;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ITemplateResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;
import sn.alien.sseapp.classses.Assurance;
import sn.alien.sseapp.classses.Medecin;
import sn.alien.sseapp.classses.User;
import sn.alien.sseapp.dao.AssuranceRepository;
import sn.alien.sseapp.dao.MedcinRepository;
import sn.alien.sseapp.dao.UserRepository;
import sn.alien.sseapp.metier.Imetier;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@Configuration
@ComponentScan
@EnableAutoConfiguration
@SpringBootApplication
public class SseappApplication implements CommandLineRunner {

    @Autowired
    private Imetier metier;

    @Autowired
    private MedcinRepository medcinRepository;

    @Autowired
    private AssuranceRepository assuranceRepository;




    @Autowired

    private UserRepository userRepository;

    public static void main(String[] args) {

        SpringApplication.run(SseappApplication.class, args);

    }

    @Override
    public void run(String... args) throws Exception {

/*
        User user = userRepository.getOne("test");

        Medecin medecin = medcinRepository.getByUser(user);

        System.out.println("---------------------");
        System.out.println(medecin.getNom());
        System.out.println(medecin.getPrenom());
        System.out.println(medecin.getEmail());
        System.out.println(medecin.getSpecialite());*/


    /*  User user = metier.addRoleToUser("test", "admin");

      System.out.println("----------------------");
      System.out.println(user.getUsername());
*/

//    User user = new User("axa", "axa");
//
//    userRepository.save(user);
//
//
//    metier.addRoleToUser("axa", "admin");
//
//        Assurance assurance = assuranceRepository.getByNinea(2);
//
//        assurance.setUser(user);
//
//        assuranceRepository.saveAndFlush(assurance);

      /* good coding dont forget this next line
       Assurance assurance = new Assurance();

        assurance.setNomAssurance("nsia");
        assurance.setAdresse("abidjan");
        assurance.setEmail("nsia@gmail.com");

        User user = new User("nsia", "nsia");

        metier.addUser(user);

        metier.addRoleToUser("nsia", "admin");


        assurance.setUser(user);



        assuranceRepository.save(assurance);*/

    //  generatepdf();


    }

    @Bean
    public ViewResolver viewResolver() {
        ThymeleafViewResolver viewResolver = new ThymeleafViewResolver();
        viewResolver.setTemplateEngine(templateEngine());
        return viewResolver;
    }

    @Bean
    public  ISpringTemplateEngine templateEngine() {
        SpringTemplateEngine templateEngine = new SpringTemplateEngine();
        templateEngine.setTemplateResolver(templateResolver());
        //templateEngine.addDialect(new LayoutDialect());

        return templateEngine;
    }

    private ITemplateResolver templateResolver() {
        SpringResourceTemplateResolver templateResolver = new SpringResourceTemplateResolver();
        templateResolver.setPrefix("classpath:/templates/");
        templateResolver.setSuffix(".html");
        templateResolver.setTemplateMode(TemplateMode.HTML);
        templateResolver.setCharacterEncoding("UTF-8");
        templateResolver.setCacheable(false);
        return templateResolver;
    }

    public void generatepdf() throws IOException, DocumentException {

        String html = templateEngine().process("facture", new Context());


        OutputStream outputStream = new FileOutputStream("C:\\Users\\hp-pc\\Desktop\\sseapp\\src\\main\\resources\\pdfs\\mon.pdf");
        ITextRenderer renderer = new ITextRenderer();
        renderer.setDocumentFromString(html);
        renderer.layout();
        renderer.createPDF(outputStream);
        outputStream.close();

    }
}
