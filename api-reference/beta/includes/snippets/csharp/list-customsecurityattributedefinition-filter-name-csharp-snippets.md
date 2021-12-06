---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customSecurityAttributeDefinitions = await graphClient.Directory.CustomSecurityAttributeDefinitions
	.Request()
	.Filter("name eq 'Project' and status eq 'Available'")
	.GetAsync();

```