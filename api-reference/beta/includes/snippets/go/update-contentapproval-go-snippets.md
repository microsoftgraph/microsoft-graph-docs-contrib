---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewComplianceChange()
isRevoked := true
requestBody.SetIsRevoked(&isRevoked) 

result, err := graphClient.Admin().Windows().Updates().UpdatePoliciesById("updatePolicy-id").ComplianceChangesById("complianceChange-id").Patch(context.Background(), requestBody, nil)


```