---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.TenantRelationships().ManagedTenants().ConditionalAccessPolicyCoveragesById("conditionalAccessPolicyCoverage-id").Get(context.Background(), nil)


```