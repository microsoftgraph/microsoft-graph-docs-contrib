---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Print.Printers.Item.Jobs.Item.Abort;

var requestBody = new AbortPostRequestBody
{
	Reason = "String",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"].Abort.PostAsync(requestBody);


```