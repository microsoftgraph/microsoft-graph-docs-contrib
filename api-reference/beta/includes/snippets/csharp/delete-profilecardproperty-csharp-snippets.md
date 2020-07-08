---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Organization["settings"].ProfileCardProperties.Fax
	.Request()
	.DeleteAsync();

```