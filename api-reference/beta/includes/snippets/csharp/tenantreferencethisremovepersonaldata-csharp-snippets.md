---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Directory.OutboundSharedUserProfiles["{outboundSharedUserProfile-userId}"].Tenants["{tenantReference-tenantId}"].RemovePersonalData.PostAsync();


```