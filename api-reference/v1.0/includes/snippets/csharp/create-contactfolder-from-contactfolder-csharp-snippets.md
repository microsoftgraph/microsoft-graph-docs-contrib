---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContactFolder
{
	DisplayName = "Family",
};
var result = await graphClient.Me.ContactFolders["{contactFolder-id}"].ChildFolders.PostAsync(requestBody);


```