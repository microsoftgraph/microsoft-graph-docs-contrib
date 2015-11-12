
# Add paging to the Microsoft Graph data in your app 
 
When Office 365 returns too much information to show on one page, use paging to break the information into manageable chunks. Learn how to modify a sample MVC project to provide paging for Office 365 data. 
    

## Control and go to items on a page

<!--<a name="sectionSection0"> </a>-->

This example shows you how to use the Office 365 APIs  **Take()** and **Skip()** functions to limit the number of items returned. When a user selects one of the paging buttons, the **GetMessage()** method will skip over the specified number of messages to present the next page.

Include buttons on the page to allow a user to select a page. The example shows how to set the number of buttons based on the total records found and the page size you select. 

You should provide a way to modify the page index and request the next page of data when a user chooses a button. To do this, add query strings to the URL and use  **ViewBag** to pass shared information from one page to another.


## Before you begin
<!--<a name="sectionSection1"> </a>-->

Before you begin the steps in this article, make sure that you have the following:


- Office 365 tenant
    
- Visual Studio 2013
    
- The Office 365 API Tools
    
-  [SharePoint Power Hour Code Samples](https://github.com/OfficeDev/SharePoint-Power-Hour-Code-Samples)
    
Then, you are ready to  [set up your Office 365 development environment](..\howto\setup-development-environment.md).


## Set up a Connected Service for the sample
<!--<a name="sectionSection2"> </a>-->

Download the sample. In Visual Studio, connect the sample to the Mail service, and sign in to Azure AD to grant permissions to read mail items from Exchange Online in your Office 365 Tenancy.


### To set up a Connected Service


1. Open the solution in Visual Studio.
    
2. Set up a Connected Service, and register the application with Azure AD that is associated with your Office 365 tenant.
    
    This sample uses the Mail REST API, so add the Mail service as a Connected Service.
    
3. Grant permissions to the application by selecting the appropriate check box in the Mail Permissions dialog box.
    
4. Run the application in debug mode to test connectivity.
    

## Add paging to the sample
<!--<a name="sectionSection3"> </a>-->

After you get everything connected, modify the sample to add paging. 


### To add paging


1 - Modify the MailApiSample.cs file by creating an overload of the  **GetMessages()** method and specifying parameters, as shown.
   
```
    public static async Task<IEnumerable<IMessage>> GetMessages(int pageIndex, int pageSize) 
    { 
     var client = await EnsureClientCreated(); 
     var messageResults = await (from i in client.Me.Inbox.Messages 
                                        orderby i.DateTimeSent descending 
                                        select i).Skip(pageIndex *
                                        pageSize).Take(pageSize).ExecuteAsync(); 
        return messageResults.CurrentPage; 
    } 

```


You can also modify the existing method, but, for compatibility with the other samples in the package, we recommend that you keep the original and modify a copy.
    
The secrets to this code are the  **Skip()** and **Take()** methods. The **Skip()** method takes an integer that specifies the number of messages to skip from the beginning of the result set.
    
The  **Take()** method also takes an integer. When executed, it will retrieve the number of records specified in the parameter.
    
2 - Modify the HomeController.cs file by replacing the existing  **Mail()** method with the following code.
        
```
    public async Task<ActionResult> Mail() 
    { 
    var totalMessages = 20; 
    // If a user chooses one of the paging buttons, they will add a querystring value to the     
    // request. 
    if (Request.QueryString["PageIndex"] != null) 
    { 
        ViewBag.PageIndex = Convert.ToInt32(Request.QueryString["PageIndex"]); 
    } 
    else 
    {  
        ViewBag.PageIndex = 0; 
    } 
    if(Request.QueryString["PageSize"] != null) 
    { 
        ViewBag.PageSize = Convert.ToInt32(Request.QueryString["PageSize"]); 
    } 
    else 
    { 
        ViewBag.PageSize = defaultPageSize;                 
    } 
    ViewBag.TotalPages = Convert.ToDouble(totalMessages) /                           
                         Convert.ToDouble(ViewBag.PageSize); 
    var mails = await O365ApiFullStack.MailApiSample.GetMessages(ViewBag.PageIndex,
                ViewBag.PageSize); 
    return View(mails); 
    } 

``` 


In this example, the total number of messages is hard-coded. In your production environment, you'll want to set the `totalMessages` variable to the total count of messages.
    
You need the  **Request.QueryString** loops to handle selection of the paging buttons, which you'll add in the next step. You'll have to convert the **QueryString** values to integers so that they can be passed to the **GetMessages** method.
    
**ViewBag** stores some of these values. This is necessary to pass information across the application. 
    
You'll also have to add a property for the default page size.
    
```
    public int defaultPageSize  
      { 
          get { return 5; } 
    } 

```

3 - Add buttons to the Mail.cshtml file for paging. This provides controls for users to page through the data. Add the markup shown in the following example below the data table.

```
    <!-- 
    Render the paging buttons 
    --> 
    <div class="btn btn-group-sm"> 
    @for (int i = 0; i <= ViewBag.TotalPages - 1; i++) 
    { 
        string buttonLabel; 
        if (i == 0) 
        { 
            buttonLabel = "<<"; 
        } 
        else 
        { 
            buttonLabel = i.ToString(); 
        }         
        var httpAttributes = new Dictionary<string, object>(); 
        httpAttributes.Add("class", "btn btn-default"); 
        var routeValues = new RouteValueDictionary(); 
        routeValues.Add("pageIndex", i.ToString()); 
        routeValues.Add("pageSize", ViewBag.PageSize);             
        @Html.ActionLink(buttonLabel, "Mail", "Home", "http", "localhost", null, routeValues, httpAttributes); 
    } 
    </div> 

```


This creates a set of buttons that the user can use to go from one page of data to another. 
    
4 - Build and run the project (F5) to see how paging works.
    
