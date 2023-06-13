---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"customSecurityAttributes" , new 
			{
				Engineering = new 
				{
					OdataType = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
					NumVendorsOdataType = "#Int32",
					NumVendors = 8,
				},
			}
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```