---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var caseSettings = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Settings
	.Request()
	.GetAsync();

```