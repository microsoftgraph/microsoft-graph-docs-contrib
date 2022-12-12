---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserAttributeAssignmentsById("identityUserFlowAttributeAssignment-id").Delete(context.Background(), nil)


```