---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").UserAttributeAssignmentsById("identityUserFlowAttributeAssignment-id").Get(context.Background(), nil)


```