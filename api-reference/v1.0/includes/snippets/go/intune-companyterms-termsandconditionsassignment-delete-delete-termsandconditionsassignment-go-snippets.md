---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.DeviceManagement().TermsAndConditions().ByTermsAndConditionId("termsAndConditions-id").Assignments().ByAssignmentId("termsAndConditionsAssignment-id").Delete(context.Background(), nil)


```