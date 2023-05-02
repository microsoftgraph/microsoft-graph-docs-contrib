---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Identity.ConditionalAccess.AuthenticationStrength.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations["{authenticationCombinationConfiguration-id}"].GetAsync();


```