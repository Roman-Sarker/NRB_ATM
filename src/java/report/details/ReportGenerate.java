package report.details;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import static oracle.net.ano.AnoServices.PORT;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author roman
 */
@WebServlet(name = "ReportGenerate", urlPatterns = {"/ReportGenerate"})
public class ReportGenerate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        response.setContentType("text/html;charset=UTF-8");

        String ip = "10.11.200.146";
        String port = "8085";
        String project = "ATM_NRB_API";
        String servlet = "ReportGen";
        //String URL = "http://10.11.200.146:8085/ATM_NRB_API/ReportGen";
        String URL = "http://" + ip + ":" + port + "/" + project + "/" + servlet;
        String jsonString = "";

//        ArrayList<String> vId = new ArrayList<String>();
//        ArrayList<String> vName = new ArrayList<String>();
//        ArrayList<String> vDis = new ArrayList<String>();
        try {
            JSONParserPost jsonParserpost = new JSONParserPost();
            String output = jsonParserpost.makeHttpRequest(URL, "POST", jsonString);

            out.println("Start receive.");
            out.println("Receive data is :</br>" + output + "</br>----------");
          
            if (output != null) {
                try {
                    JSONArray jsonArray = new JSONArray(output);//output.getJSONArray();

                    if (jsonArray != null) {
                        JSONObject jsonObject = jsonArray.getJSONObject(0);
                        out.println("</br>Value of 0 index of jsonObject :" + jsonObject.length());

                        if (jsonObject == null) {
                            String errorFlag = jsonObject.getString("Error");
                            out.println("Error is :" + errorFlag);
                        } else {
//                            Map<String, String> vid = new HashMap<String, String>();
//                            Map<String, String> vName = new HashMap<String, String>();
//                            Map<String, String> vDis = new HashMap<String, String>();
                            
//                            List<String> vId = new ArrayList<String>();
//                            List<String> vName = new ArrayList<String>();
//                            List<String> vDis = new ArrayList<String>();
                            
                            List<String> req_type_id = new ArrayList<String>();
                            List<String> req_log_id = new ArrayList<String>();
                            List<String> timestamp = new ArrayList<String>();
                            List<String> status = new ArrayList<String>();
                            List<String> card_no = new ArrayList<String>();
                            List<String> location = new ArrayList<String>();
                            List<String> decline_reason = new ArrayList<String>();
                            List<String> amount = new ArrayList<String>();
                            List<String> insert_date = new ArrayList<String>();
                            List<String> insert_by = new ArrayList<String>();
                            List<String> merchant_category_code = new ArrayList<String>();
                            List<String> aquirer_fee = new ArrayList<String>();
                            List<String> acq_ins_code = new ArrayList<String>();
                            List<String> frd_ins_code = new ArrayList<String>();
                            List<String> terminal_id = new ArrayList<String>();
                            List<String> terminal_location = new ArrayList<String>();
                            
                            for (int i = 0; i < jsonArray.length(); i++) { // Loop circling depend on row
                                JSONObject innerObj = jsonArray.getJSONObject(i);
                                int count = 1;
                                for (Iterator it = innerObj.keys(); it.hasNext();) { // Loop circling depend on column
                                    String key = (String) it.next();
                                    out.println("</br>" + key + ":" + innerObj.get(key).toString());
                                    
                                    if(count == 1)
                                    {req_type_id.add(innerObj.get(key).toString());}
                                    else if(count == 2)
                                    {req_log_id.add(innerObj.get(key).toString());}
                                    else if(count == 3)
                                    {timestamp.add(innerObj.get(key).toString());}
                                    else if(count ==4 )
                                    {status.add(innerObj.get(key).toString());}
                                    else if(count == 5)
                                    {card_no.add(innerObj.get(key).toString());}
                                    else if(count == 6)
                                    {location.add(innerObj.get(key).toString());}
                                    else if(count == 7)
                                    {decline_reason.add(innerObj.get(key).toString());}
                                    else if(count == 8)
                                    {amount.add(innerObj.get(key).toString());}
                                    else if(count == 9)
                                    {insert_date.add(innerObj.get(key).toString());}
                                    else if(count == 10)
                                    {insert_by.add(innerObj.get(key).toString());}
                                    else if(count == 11)
                                    {merchant_category_code.add(innerObj.get(key).toString());}
                                    else if(count == 12)
                                    {aquirer_fee.add(innerObj.get(key).toString());}
                                    else if(count == 13)
                                    {acq_ins_code.add(innerObj.get(key).toString());}
                                    else if(count == 14)
                                    {frd_ins_code.add(innerObj.get(key).toString());}
                                    else if(count == 15)
                                    {terminal_id.add(innerObj.get(key).toString());}
                                    else if(count == 16)
                                    {terminal_location.add(innerObj.get(key).toString());}
                                    else
                                    {
                                        count = 0;
                                    }
                                    
                                    count++;
                                }
                            }
                            
                              //Bean bean = new Bean();
                            BeanClass bean = new BeanClass();
                                bean.setbAcq_ins_code(acq_ins_code);
                                bean.setbAquirer_fee(aquirer_fee);
                                bean.setbCard_no(card_no);
                                bean.setbDecline_reason(decline_reason);
                                bean.setbDmount(amount);
                                bean.setbFrd_ins_code(frd_ins_code);
                                bean.setbIerchant_category_code(merchant_category_code);
                                bean.setbInsert_by(insert_by);
                                bean.setbInsert_date(insert_date);
                                bean.setbLocation(location);
                                bean.setbReq_log_id(req_log_id);
                                bean.setbReq_type_id(req_type_id);
                                bean.setbStatus(status);
                                bean.setbTerminal_id(terminal_id);
                                bean.setbTerminal_location(terminal_location);
                                bean.setbTimestamp(timestamp);
                            
                             // bean.setvId(vId);
                             
                              out.println("From bean class :");
                              out.println("</br></br>ID     ||  Name  ||  District");
                                for(int m = 0; m<bean.getbReq_type_id().size(); m++){
                                    //out.println("</br>"+vId.get(m).toString()+" || "+vName.get(m).toString()+" || "+vDis.get(m).toString());
                                    out.println("</br>"+bean.getbReq_type_id().get(m).toString()+" || "+bean.getbReq_log_id().get(m).toString()+" || "+bean.getbCard_no().get(m).toString());
                                }
                        }

                    } else {
                        out.println("Output is null.");
                        //JSONArray jsonArray1 = output.getJSONArray();
                    }
                } catch (JSONException ex) {
                    Logger.getLogger(ReportGenerate.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                out.println("Output is null.");
            }

//            request.setAttribute("message", "hello");
//            RequestDispatcher view=request.getRequestDispatcher("all_atm.jsp");
//            view.forward(request,response);
        } catch (Exception ex) {
            out.println(ex);
            ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
