---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Extension
{
	OdataType = "#microsoft.graph.openTypeExtension",
	Id = "com.contoso.socialSettings",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extensionName" , "com.contoso.socialSettings"
		},
		{
			"skypeId" , "skypeId.AdeleV"
		},
		{
			"linkedInProfile" , "www.linkedin.com/in/testlinkedinprofile"
		},
		{
			"xboxGamerTag" , "AwesomeAdele"
		},
	},
};
var result = await graphClient.Users["{user-id}"].Extensions.PostAsync(requestBody);


```