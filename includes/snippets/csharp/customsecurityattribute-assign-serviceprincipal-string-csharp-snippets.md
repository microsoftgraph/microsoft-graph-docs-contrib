---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"customSecurityAttributes" , new 
			{
				Engineering = new 
				{
					OdataType = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
					ProjectDate = "2022-10-01",
				},
			}
		},
	},
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].PatchAsync(requestBody);


```