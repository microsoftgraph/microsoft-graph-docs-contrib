---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].UserFlowIdentityProviders["{identityProviderBase-id}"].Ref.DeleteAsync();


```