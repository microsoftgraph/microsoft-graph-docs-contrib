---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Print.Shares["{printerShare-id}"].AllowedGroups["{group-id}"].Ref.DeleteAsync();


```