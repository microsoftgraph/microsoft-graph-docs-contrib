---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Admin().Windows().Updates().UpdatePoliciesById("updatePolicy-id").ComplianceChangesById("complianceChange-id").Delete(context.Background(), nil)


```