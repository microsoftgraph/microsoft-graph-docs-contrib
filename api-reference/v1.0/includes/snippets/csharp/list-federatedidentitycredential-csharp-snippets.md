---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var federatedIdentityCredentials = await graphClient.Applications["{application-id}"].FederatedIdentityCredentials
	.Request()
	.GetAsync();

```