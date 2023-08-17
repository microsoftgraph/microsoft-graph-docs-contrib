---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelswindowsupdates.NewComplianceChange()
isRevoked := true
requestBody.SetIsRevoked(&isRevoked) 

result, err := graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicieId("updatePolicy-id").ComplianceChanges().ByComplianceChangeId("complianceChange-id").Patch(context.Background(), requestBody, nil)


```