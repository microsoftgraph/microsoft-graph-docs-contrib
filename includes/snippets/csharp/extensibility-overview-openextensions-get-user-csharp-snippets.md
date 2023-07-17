---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenTypeExtension
{
	OdataType = "#microsoft.graph.openTypeExtension",
	Id = "com.contoso.socialSettings",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity"
		},
		{
			"xboxGamerTag" , "FierceAdele"
		},
		{
			"linkedInProfile" , "www.linkedin.com/in/testlinkedinprofile"
		},
	},
};
var result = await graphClient.Users["{user-id}"].Extensions["{extension-id}"].GetAsync(requestBody);


```