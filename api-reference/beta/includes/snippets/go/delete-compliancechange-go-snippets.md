---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicieId("updatePolicy-id").ComplianceChanges().ByComplianceChangeId("complianceChange-id").Delete(context.Background(), nil)


```