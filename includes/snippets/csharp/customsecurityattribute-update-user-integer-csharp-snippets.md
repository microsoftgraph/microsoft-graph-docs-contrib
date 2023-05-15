---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	CustomSecurityAttributes = new CustomSecurityAttributeValue
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Engineering" , new 
				{
					OdataType = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
					NumVendorsOdataType = "#Int32",
					NumVendors = 8,
				}
			},
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```