---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Messages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "Extensions/any(f:f/id eq 'Com.Contoso.Referral')";
	requestConfiguration.QueryParameters.Expand = new string []{ "Extensions($filter=id eq 'Com.Contoso.Referral')" };
});


```