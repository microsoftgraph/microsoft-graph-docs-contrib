---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deviceRegistrationPolicy = await graphClient.Policies.DeviceRegistrationPolicy
	.Request()
	.GetAsync();

```