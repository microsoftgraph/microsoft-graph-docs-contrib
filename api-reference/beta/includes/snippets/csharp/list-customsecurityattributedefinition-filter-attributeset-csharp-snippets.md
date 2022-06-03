---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customSecurityAttributeDefinitions = await graphClient.Directory.CustomSecurityAttributeDefinitions
	.Request()
	.Filter("attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'")
	.GetAsync();

```