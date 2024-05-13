---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewHealthIssue()
status := graphmodels.CLOSED_HEALTHISSUESTATUS 
requestBody.SetStatus(&status) 

healthIssues, err := graphClient.Security().Identities().HealthIssues().ByHealthIssueId("healthIssue-id").Patch(context.Background(), requestBody, nil)


```