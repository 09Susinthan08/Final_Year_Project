package servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;

/**
 * Servlet implementation class Word
 */
@WebServlet("/Word")
public class Word extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Word() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	String fileName="";
			try {
				File file = new File(fileName);
				FileInputStream fis = new FileInputStream(file.getAbsolutePath());

				HWPFDocument doc = new HWPFDocument(fis);

				WordExtractor we = new WordExtractor(doc);

				String[] paragraphs = we.getParagraphText();
				
				System.out.println("Total no of paragraph "+paragraphs.length);
				for (String para : paragraphs) {
					System.out.println(para.toString());
				}
				fis.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		public static void readDocxFile(String fileName) {

			try {
				File file = new File(fileName);
				FileInputStream fis = new FileInputStream(file.getAbsolutePath());

				XWPFDocument document = new XWPFDocument(fis);

				List<XWPFParagraph> paragraphs = document.getParagraphs();
				
				System.out.println("Total no of paragraph "+paragraphs.size());
				for (XWPFParagraph para : paragraphs) {
					System.out.println(para.getText());
				}
				fis.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		public static void main(String[] args) {

			readDocxFile("C:\\Test.docx");

			readDocxFile("C:\\Test.doc");

		}
	}
