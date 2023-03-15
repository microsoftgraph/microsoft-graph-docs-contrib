---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Messages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "Subject eq 'welcome' and importance eq 'normal'";
	requestConfiguration.QueryParameters.Orderby = new string []{ "subject","importance","receivedDateTime desc" };
});


```