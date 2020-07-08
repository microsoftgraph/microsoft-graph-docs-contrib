---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var response = await graphClient.Organization["settings"].ProfileCardProperties["{id}"]
	.Request()
	.GetAsync();

```