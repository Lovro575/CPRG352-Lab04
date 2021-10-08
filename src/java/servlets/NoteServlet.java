package servlets;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Note;

public class NoteServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userPage = request.getParameter("edit");
        String title;
        String contents;
        
        String path = getServletContext().getRealPath("/WEB-INF/note.txt");
        BufferedReader br = new BufferedReader(new FileReader(new File(path)));

        title = br.readLine();
        contents = br.readLine();
        
        Note noteEdits = new Note(title, contents);
        request.setAttribute("note", noteEdits);
        
        if(userPage == null) {
            getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
        } else {
            getServletContext().getRequestDispatcher("/WEB-INF/editnote.jsp").forward(request, response);
        }        

        br.close();
        return;

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               
        String title = request.getParameter("editTitle");
        String contents = request.getParameter("editContents");
        
        String path = getServletContext().getRealPath("/WEB-INF/note.txt");        
        PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(path, false)));

        pw.write(title);
        pw.write(contents);
        pw.close();
        
        Note noteEdits = new Note(title, contents);

        
        
        getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
        
    }
}