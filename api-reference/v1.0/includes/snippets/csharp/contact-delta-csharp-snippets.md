---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.ContactFolders["{contactFolder-id}"].Contacts.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "displayName" };
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```