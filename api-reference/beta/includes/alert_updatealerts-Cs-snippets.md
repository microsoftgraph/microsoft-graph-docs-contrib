
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var vendorInformation = new SecurityVendorInformation
{
	Provider = "String",
	Vendor = "String",
};

var tagsList = new List<String>();
tagsList.Add( "String" );

var status = new AlertStatus
{
};

var feedback = new AlertFeedback
{
};

var commentsList = new List<String>();
commentsList.Add( "String" );

var value = new Alert
{
	AssignedTo = "String",
	ClosedDateTime = "String (timestamp)",
	Comments = commentsList,
	Feedback = feedback,
	Id = "String (identifier)",
	Status = status,
	Tags = tagsList,
	VendorInformation = vendorInformation,
};

var valueList = new List<Alert>();
valueList.Add( value );

await graphClient.Security.Alerts
	.UpdateAlerts(valueList)
	.Request()
	.PostAsync()

```