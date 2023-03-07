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
			"extensionName" , "com.contoso.roamingSettings"
		},
		{
			"theme" , "dark"
		},
		{
			"color" , "purple"
		},
		{
			"lang" , "Japanese"
		},
	},
};
var result = await graphClient.Me.Extensions.PostAsync(requestBody);


```