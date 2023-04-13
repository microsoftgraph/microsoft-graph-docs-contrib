---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extensionProperty = await graphClient.Applications["{application-id}"].ExtensionProperties["{extensionProperty-id}"]
	.Request()
	.GetAsync();

```