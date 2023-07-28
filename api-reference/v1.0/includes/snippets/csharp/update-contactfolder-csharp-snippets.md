---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContactFolder
{
	ParentFolderId = "parentFolderId-value",
	DisplayName = "displayName-value",
};
var result = await graphClient.Me.ContactFolders["{contactFolder-id}"].PatchAsync(requestBody);


```