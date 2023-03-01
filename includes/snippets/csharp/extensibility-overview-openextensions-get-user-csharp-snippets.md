---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.Extensions.Item.Extension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity"
		},
		{
			"@odata.type" , "#microsoft.graph.openTypeExtension"
		},
		{
			"xboxGamerTag" , "FierceAdele"
		},
		{
			"linkedInProfile" , "www.linkedin.com/in/testlinkedinprofile"
		},
		{
			"id" , "com.contoso.socialSettings"
		},
	},
};
var result = await graphClient.Users["{user-id}"].Extensions["{extension-id}"].GetAsync(requestBody);


```