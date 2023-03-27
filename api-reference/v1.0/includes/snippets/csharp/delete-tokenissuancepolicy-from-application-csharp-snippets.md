---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Applications["{application-id}"].TokenIssuancePolicies["{tokenIssuancePolicy-id}"].Ref.DeleteAsync();


```