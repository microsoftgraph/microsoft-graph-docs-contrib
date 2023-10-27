---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenTypeExtension
{
	OdataType = "microsoft.graph.openTypeExtension",
	ExtensionName = "com.contoso.roamingSettings",
	AdditionalData = new Dictionary<string, object>
	{
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