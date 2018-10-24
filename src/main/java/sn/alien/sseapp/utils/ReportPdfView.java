package sn.alien.sseapp.utils;

import com.itextpdf.io.font.FontConstants;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;
import sn.alien.sseapp.classses.Facture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;


@Component("reportView")
public class ReportPdfView extends AbstractView {


    @Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        httpServletResponse.setHeader("Content-Disposition", "attachment; filename=myReport.pdf");

        //Report report = (Report) model.get("report");
        Facture facture = (Facture) model.get("facture");

        //IText API
        PdfWriter pdfWriter = new PdfWriter(httpServletResponse.getOutputStream());


        PdfDocument pdf = new PdfDocument(pdfWriter);
        Document pdfDocument = new Document(pdf);

        //title
        Paragraph title = new Paragraph(String.valueOf(facture.getTraitement().getAssure().getAssurance().getNomAssurance()));
        title.setFont(PdfFontFactory.createFont(FontConstants.HELVETICA));
        title.setFontSize(18f);
        title.setItalic();
        pdfDocument.add(title);



        //date
        Paragraph date = new Paragraph("Bénéficiare des soins");
        date.setFontSize(16f);
        pdfDocument.add(date);

        //content
        Paragraph content = new Paragraph("Personne recevant les soins ");
        pdfDocument.add(content);
        //--------------------------------------

        pdfDocument.add(new Paragraph("Réf Police : " + facture.getTraitement().getBeneficiaire().getRefPolice()+ " Prenom : "
        +facture.getTraitement().getBeneficiaire().getPrenom()));

        //--------------------------------------------------------
        pdfDocument.add(new Paragraph("Date Naissance : " + facture.getTraitement().getBeneficiaire().getDateNaissance()+ " Nom : "
                +facture.getTraitement().getBeneficiaire().getNom()));

        //---------------------------------------------------
        pdfDocument.add(new Paragraph("Adresse : " + facture.getTraitement().getBeneficiaire().getAdresse()));


        //-------------------------
        Paragraph content1 = new Paragraph("Assuré(e) ");
        pdfDocument.add(content1);

        //---------------------------------------
        pdfDocument.add(new Paragraph("ref Police : " + facture.getTraitement().getAssure().getRefPolice()+ " Nom : "
                +facture.getTraitement().getBeneficiaire().getNom()));

        pdfDocument.add(new Paragraph("Societe : " + facture.getTraitement().getAssure().getSocieteAssure()+ " Prenom : "
                +facture.getTraitement().getBeneficiaire().getPrenom()));


        //-----------------------
        Paragraph content2 = new Paragraph("Assurance/Mutuelle/IPM ");
        pdfDocument.add(content2);

        pdfDocument.add(new Paragraph("Code : " + facture.getTraitement().getAssure().getAssurance().getNinea()+ " Nom : "
                +facture.getTraitement().getAssure().getAssurance().getNomAssurance()));



        //--------------
        Paragraph date1 = new Paragraph("Informations du praticien");
        date.setFontSize(16f);
        pdfDocument.add(date1);

        pdfDocument.add(new Paragraph("Matricule : " + facture.getTraitement().getMedecin().getIdMedcin()+ " Nom et Prenom: "
                +facture.getTraitement().getMedecin().getNom()+ " "+facture.getTraitement().getMedecin().getPrenom()));



        Paragraph title1 = new Paragraph("Conditions de Prise en charge ");
        title.setFont(PdfFontFactory.createFont(FontConstants.HELVETICA));
        title.setFontSize(18f);
        title.setItalic();
        pdfDocument.add(title1);


        pdfDocument.add(new Paragraph("Type de Prise en charge : " + facture.getTraitement().getConditionPC().getNature()+ " Durée Incapicité: "
                +facture.getTraitement().getMedecin().getNom()+ " "+facture.getTraitement().getConditionPC().getDuree()));











        //-------------------------------
        //Paragraph repfpolice = new Paragraph(facture.getTraitement().getBeneficiaire().getNom());
        //pdfDocument.add(repfpolice);

        pdfDocument.close();

    }
}