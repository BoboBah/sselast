package sn.alien.sseapp.utils;


import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import org.springframework.stereotype.Component;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

@Component
public class ConvertToPdf {
    public static final String Result="C:\\Users\\hp-pc\\Desktop\\sseapp\\src\\main\\resources\\pdfs\\monpdf2.pdf";

    public static void createPDF(String pdfFileName) throws IOException {

        //path for the PDF file to be generated

       // Result =Result+pdfFileName;
        PdfWriter pdfWriter = null;

        //create a new document
        Document document = new Document();

        try {

            //get Instance of the PDFWriter
            try {
                pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(Result));
            } catch (DocumentException e) {
                e.printStackTrace();
            }

            //pdfWriter = PdfWriter.get

            //document header attributes
            document.addAuthor("betterThanZero");
            document.addCreationDate();
            document.addProducer();
            document.addCreator("MySampleCode.com");
            document.addTitle("Demo for iText XMLWorker");
            document.setPageSize(PageSize.LETTER);

            //open document
            document.open();

            //To convert a HTML file from the filesystem
            String File_To_Convert = "C:\\Users\\hp-pc\\Desktop\\sseapp\\src\\main\\resources\\templates\\facture.html";
            FileInputStream fis = new FileInputStream(File_To_Convert);

            //URL for HTML page
            //URL myWebPage = new URL("https://www.google.fr");
            //InputStreamReader fis = new InputStreamReader(myWebPage.openStream());


            //System.out.println(fis.toString());

           // char c;

            //while (fis.ready() != false)
            //{
              //  c = (char) fis.read();

                //System.out.println(c);
            //}

            //get the XMLWorkerHelper Instance
            XMLWorkerHelper worker = XMLWorkerHelper.getInstance();
            //convert to PDF
            worker.parseXHtml(pdfWriter, document, fis);

            //close the document
            document.close();
            //close the writer
            pdfWriter.close();

        }

        catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}

