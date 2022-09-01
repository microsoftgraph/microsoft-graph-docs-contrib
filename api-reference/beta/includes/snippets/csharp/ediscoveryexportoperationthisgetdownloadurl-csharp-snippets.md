---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @string = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Operations["{security.caseOperation-id}"]
	.GetDownloadUrl()
	.Request()
	.GetAsync();

```