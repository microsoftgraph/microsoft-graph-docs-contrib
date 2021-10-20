---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationSettings = await graphClient.Organization["{organization-id}"].Settings
	.Request()
	.GetAsync();

```