---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppManagementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

appManagementPolicies, err := graphClient.Policies().AppManagementPolicies().ByAppManagementPolicyId("appManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```