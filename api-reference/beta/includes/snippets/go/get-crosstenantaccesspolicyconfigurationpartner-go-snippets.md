---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").Get(context.Background(), nil)


```