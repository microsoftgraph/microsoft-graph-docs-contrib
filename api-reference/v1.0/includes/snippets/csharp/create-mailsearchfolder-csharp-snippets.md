---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailFolder
{
	OdataType = "microsoft.graph.mailSearchFolder",
	DisplayName = "Weekly digests",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"includeNestedFolders" , true
		},
		{
			"sourceFolderIds" , new List<string>
			{
				"AQMkADYAAAIBDAAAAA==",
			}
		},
		{
			"filterQuery" , "contains(subject, 'weekly digest')"
		},
	},
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].ChildFolders.PostAsync(requestBody);


```