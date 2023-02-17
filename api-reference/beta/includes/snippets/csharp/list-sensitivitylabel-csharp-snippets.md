---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sensitivityLabels = await graphClient.Users["{user-id}"].Security.InformationProtection.SensitivityLabels
	.Request()
	.GetAsync();

```