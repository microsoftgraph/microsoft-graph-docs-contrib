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


requestBody := graphmodels.NewCommunity()
displayName := "Financial Advice for Software Engineers"
requestBody.SetDisplayName(&displayName) 
description := "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients."
requestBody.SetDescription(&description) 
privacy := graphmodels.PUBLIC_COMMUNITYPRIVACY 
requestBody.SetPrivacy(&privacy) 

communities, err := graphClient.EmployeeExperience().Communities().Post(context.Background(), requestBody, nil)


```