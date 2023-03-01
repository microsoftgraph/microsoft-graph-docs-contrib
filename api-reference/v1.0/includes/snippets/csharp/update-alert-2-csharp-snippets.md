---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Alert
{
	AssignedTo = "String",
	ClosedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	Comments = new List<string>
	{
		"String",
	},
	Feedback = AlertFeedback.Unknown,
	Status = AlertStatus.Unknown,
	Tags = new List<string>
	{
		"String",
	},
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "String",
		Vendor = "String",
	},
};
var result = await graphClient.Security.Alerts["{alert-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```