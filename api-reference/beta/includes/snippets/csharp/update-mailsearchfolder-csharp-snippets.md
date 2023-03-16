---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailFolder
{
	OdataType = "microsoft.graph.mailSearchFolder",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"filterQuery" , "contains(subject, 'Analytics')"
		},
	},
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].PatchAsync(requestBody);


```