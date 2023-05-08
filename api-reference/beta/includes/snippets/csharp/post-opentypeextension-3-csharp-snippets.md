---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Extension
{
	OdataType = "microsoft.graph.openTypeExtension",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extensionName" , "Com.Contoso.Deal"
		},
		{
			"companyName" , "Alpine Skis"
		},
		{
			"dealValue" , 1010100
		},
		{
			"expirationDate" , "2015-07-03T13:04:00.000Z"
		},
	},
};
var result = await graphClient.Groups["{group-id}"].Events["{event-id}"].Extensions.PostAsync(requestBody);


```