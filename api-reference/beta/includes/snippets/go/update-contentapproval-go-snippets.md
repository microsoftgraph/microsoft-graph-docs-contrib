---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//windowsUpdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewComplianceChange()
isRevoked := true
requestBody.SetIsRevoked(&isRevoked) 

result, err := graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicieId("updatePolicy-id").ComplianceChanges().ByComplianceChangeId("complianceChange-id").Patch(context.Background(), requestBody, nil)


```