---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var caseOperation = await graphClient.Security.Cases.EdiscoveryCases["{security.ediscoveryCase-id}"].Operations["{security.caseOperation-id}"]
	.Request()
	.GetAsync();

```