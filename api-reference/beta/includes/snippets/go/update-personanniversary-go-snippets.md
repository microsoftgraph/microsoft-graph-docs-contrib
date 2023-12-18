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
allowedAudiences := graphmodels.CONTACTS_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 

anniversaries, err := graphClient.Me().Profile().Anniversaries().ByPersonAnnualEventId("personAnnualEvent-id").Patch(context.Background(), requestBody, nil)


```