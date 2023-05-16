---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Applications["{application-id}"].AppManagementPolicies["{appManagementPolicy-id}"].Ref.DeleteAsync();


```