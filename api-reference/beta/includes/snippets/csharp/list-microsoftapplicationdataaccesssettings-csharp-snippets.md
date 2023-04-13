---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var microsoftApplicationDataAccessSettings = await graphClient.Organization["{organization-id}"].Settings.MicrosoftApplicationDataAccess
	.Request()
	.GetAsync();

```