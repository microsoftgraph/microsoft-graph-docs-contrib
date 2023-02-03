---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").IdentitySynchronization().Delete(context.Background(), nil)


```