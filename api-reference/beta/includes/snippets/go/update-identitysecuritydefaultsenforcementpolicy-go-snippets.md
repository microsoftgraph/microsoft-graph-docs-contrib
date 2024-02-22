---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentitySecurityDefaultsEnforcementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

identitySecurityDefaultsEnforcementPolicy, err := graphClient.Policies().IdentitySecurityDefaultsEnforcementPolicy().Patch(context.Background(), requestBody, nil)


```