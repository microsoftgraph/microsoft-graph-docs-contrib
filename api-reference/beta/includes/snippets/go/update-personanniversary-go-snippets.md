---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Me().Profile().Anniversaries().ByAnniversarieId("personAnnualEvent-id").Patch(context.Background(), requestBody, nil)


```