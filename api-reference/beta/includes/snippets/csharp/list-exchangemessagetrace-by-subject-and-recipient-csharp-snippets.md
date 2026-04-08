---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Exchange.Tracing.MessageTraces.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "contains(subject, 'Weekly digest') and recipientAddress eq 'test@contoso.com'";
});


```