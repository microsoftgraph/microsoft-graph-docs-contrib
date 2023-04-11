---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Groups/EvaluateDynamicMembership"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEvaluateDynamicMembershipPostRequestBody()
memberId := "319b41e8-d9e4-42f8-bdc9-741113f48b33"
requestBody.SetMemberId(&memberId) 
membershipRule := "(user.displayName -startsWith \"EndTestUser\")"
requestBody.SetMembershipRule(&membershipRule) 

result, err := graphClient.Groups().EvaluateDynamicMembership().Post(context.Background(), requestBody, nil)


```