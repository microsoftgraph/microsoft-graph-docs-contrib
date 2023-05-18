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


requestBody := graphmodels.NewPersonAnnualEvent()
type := graphmodels.BIRTHDAY_PERSONANNUALEVENTTYPE 
requestBody.SetType(&type) 
date := 1980-01-08
requestBody.SetDate(&date) 

result, err := graphClient.Me().Profile().Anniversaries().Post(context.Background(), requestBody, nil)


```