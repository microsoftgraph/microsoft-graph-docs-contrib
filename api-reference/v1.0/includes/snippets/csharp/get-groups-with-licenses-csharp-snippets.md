---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups
	.Request()
	.Filter("assignedLicenses/any()")
	.Select("id,assignedLicenses")
	.GetAsync();

```