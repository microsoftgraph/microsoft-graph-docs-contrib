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


requestBody := graphmodels.NewAuthenticationConditionApplication()
appId := "63856651-13d9-4784-9abf-20758d509e19"
requestBody.SetAppId(&appId) 

includeApplications, err := graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").Conditions().Applications().IncludeApplications().Post(context.Background(), requestBody, nil)


```