---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.Admin().Windows().Updates().UpdatePoliciesById("updatePolicy-id").ComplianceChanges().Get(context.Background(), nil)


```