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


requestBody := graphmodels.NewApplication()
authenticationBehaviors := graphmodels.NewAuthenticationBehaviors()
removeUnverifiedEmailClaim := true
authenticationBehaviors.SetRemoveUnverifiedEmailClaim(&removeUnverifiedEmailClaim) 
requestBody.SetAuthenticationBehaviors(authenticationBehaviors)

applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```