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



graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().ByAssignmentRequestId("accessPackageAssignmentRequest-id").Reprocess().Post(context.Background(), nil)


```