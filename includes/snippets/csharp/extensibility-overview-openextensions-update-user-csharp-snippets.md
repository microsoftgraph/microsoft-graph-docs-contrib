---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Extension
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"xboxGamerTag" , "FierceAdele"
		},
		{
			"linkedInProfile" , "www.linkedin.com/in/testlinkedinprofile"
		},
	},
};
var result = await graphClient.Users["{user-id}"].Extensions["{extension-id}"].PatchAsync(requestBody);


```