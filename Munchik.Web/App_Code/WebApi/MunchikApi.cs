using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Munchki.Web.Code;
using Newtonsoft;
using System.Web.Script.Serialization;
using System.Web;
using Munchki.Core.Entity;

namespace Munchki.Web
{

    public class DataTableResponse
    {
        public string sEcho { get; set; }
        public int draw { get; set; }
        public int iTotalDisplayRecords { get; set; }
        public int iTotalRecords { get; set; }
        public IEnumerable<string[]> data { get; set; }
        public string error { get; set; }
    }



    public class MunchkiController : ApiController
    {
        // GET api/<controller>





        [HttpGet]
        public List<CardMasterProvider> GetCard([FromBody] int ishowData)
        {
            var oController = new DBController();
            var odata = oController.GetCardProviders();

            switch (ishowData)
            {
                case 1:
                    odata = odata.Where(x => x.IsDeleted == false).OrderBy(x => x.DisplayName).ToList();
                    break;
                case 2:
                    odata = odata.Where(x => x.IsPublic == false && x.IsDeleted == false).OrderBy(x => x.DisplayName).ToList();
                    break;

                case 3:
                    odata = odata.Where(x => x.IsDeleted == true).OrderBy(x => x.DisplayName).ToList();
                    break;

                case 4:
                default:
                    odata = odata.Where(x => x.IsPublic == true && x.IsPublic == true).OrderBy(x => x.DisplayName).ToList();
                    break;

            }


            //   RequestData rData = new RequestData();



            return odata;
            // var json = new JavaScriptSerializer().Serialize(odata);
            // return json.ToString();
        }



        [HttpGet]
        public int AddCard(string CardName, bool IsActive)
        {
            var oController = new DBController();
            if (!string.IsNullOrEmpty(CardName))
                return oController.InsertCardProvider(CardName, IsActive);

            return 0;
        }


    }




    public class RequestData
    {
        public RequestData()
        {
            mode = HttpContext.Current.Request.QueryString["mode"] == null ? "" : HttpContext.Current.Request.QueryString["mode"].ToString();
            option = HttpContext.Current.Request.QueryString["option"] == null ? "" : HttpContext.Current.Request.QueryString["option"].ToString();
            limit = HttpContext.Current.Request.QueryString["length"] == null ? "" : HttpContext.Current.Request.QueryString["length"].ToString();
            start = HttpContext.Current.Request.QueryString["start"] == null ? "" : HttpContext.Current.Request.QueryString["start"].ToString();
            user = HttpContext.Current.Request.QueryString["user"] == null ? "" : HttpContext.Current.Request.QueryString["user"].ToString();
            searchKey = HttpContext.Current.Request.QueryString["search[value]"] == null ? "" : HttpContext.Current.Request.QueryString["search[value]"].ToString();
            orderByColumn = HttpContext.Current.Request.QueryString["order[0][column]"] == null ? "" : HttpContext.Current.Request.QueryString["order[0][column]"].ToString();
            orderByDir = HttpContext.Current.Request.QueryString["order[0][dir]"] == null ? "" : HttpContext.Current.Request.QueryString["order[0][dir]"].ToString();
            estMstSrno = HttpContext.Current.Request.QueryString["estMstSrno"] == null ? "" : HttpContext.Current.Request.QueryString["estMstSrno"].ToString();
            pnlsrno = HttpContext.Current.Request.QueryString["pnlsrno"] == null ? "" : HttpContext.Current.Request.QueryString["pnlsrno"].ToString();
            draw = HttpContext.Current.Request.QueryString["draw"] == null ? "" : HttpContext.Current.Request.QueryString["draw"].ToString();


        }
        public string mode { get; set; }

        public string option { get; set; }

        public string user { get; set; }

        public string limit { get; set; }

        public string start { get; set; }

        public string searchKey { get; set; }

        public string orderByColumn { get; set; }

        public string orderByDir { get; set; }

        public string estMstSrno { get; set; }
        public string pnlsrno { get; set; }
        public string draw { get; set; }
        public string jsonString { get; set; }

    }


}