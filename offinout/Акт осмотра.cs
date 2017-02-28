
namespace Altova
{
	public partial class StyleVisionWebApp: System.Web.UI.Page
	{
		public static StyleVisionWebApp s_oSingleton = new StyleVisionWebApp();

		public string Main()
		{
			string sFileNameXslt	= Server.MapPath("Акт осмотраhtml.xslt");
			string sXmlInstance		= "";
			object oResult;
			string sRetval			= "";
			string sError			= "";

			// Get the AltovaXML assembly and create an application object
			System.Reflection.Assembly	oAssembly		= System.Reflection.Assembly.LoadWithPartialName("Altova.AltovaXML");
			object						oAltovaXmlApp	= oAssembly.CreateInstance("Altova.AltovaXML.ApplicationClass");

			// Get the XSLT1 or XSLT2 property
			object oPropertyXslt = oAltovaXmlApp.GetType().GetProperty("XSLT2").GetValue(oAltovaXmlApp, null);

			// Supply the XSLT file (set the XSLT2 property's XSLFileName property)
			oPropertyXslt.GetType().GetProperty("XSLFileName").SetValue(oPropertyXslt, sFileNameXslt, null);

				// Supply XML for main schema source "XML" (type XSD)

			oPropertyXslt.GetType().GetProperty("InputXMLFileName").SetValue(oPropertyXslt, "C:\\AUDATEX\\offinout/\u0410\u043A\u0442 \u043E\u0441\u043C\u043E\u0442\u0440\u0430.xml", null);

				// Run the XSL transformation (call the XSLT property's ExecuteAndGetResultAsString method)

			if (sError == "")
			{
				try
				{
					oResult = oPropertyXslt.GetType().GetMethod("ExecuteAndGetResultAsStringWithBaseOutputURI").Invoke(oPropertyXslt, new string[]{"C:\\AUDATEX\\offinout" + "/"});

					sRetval = (string) oResult;
				}
				catch (System.Exception oException)
				{
					sError = (string) oPropertyXslt.GetType().GetProperty("LastErrorMessage").GetValue(oPropertyXslt, null);
	
					if (sError == "")
					{
						sError= oException.ToString();
					}
				}
			}

				//

			if (sError != "")
			{
				sRetval  = "<html><head><title>Акт осмотра</title></head><body>";
				sRetval += "<h3>The application \"Акт осмотра\" encountered an error</h3>";
				sRetval += "<p>The error text is:</p>";
				sRetval += "<pre style=\"border-top:solid black 1px; border-bottom:solid black 1px; font-family:courier; padding:5mm\">" + sError + "</pre>";
				sRetval += "</body></html>";
			}

			System.Runtime.InteropServices.Marshal.ReleaseComObject(oPropertyXslt);
			oPropertyXslt = null;

			System.Runtime.InteropServices.Marshal.ReleaseComObject(oAltovaXmlApp);
			oAltovaXmlApp = null;

			return sRetval;
		}
	}
}
