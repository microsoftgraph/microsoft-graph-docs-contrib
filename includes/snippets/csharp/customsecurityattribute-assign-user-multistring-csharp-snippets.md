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
					ProjectOdataType = "#Collection(String)",
					Project = new List<string>
					{
						"Baker",
						"Cascade",
					},
				}
			},
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```