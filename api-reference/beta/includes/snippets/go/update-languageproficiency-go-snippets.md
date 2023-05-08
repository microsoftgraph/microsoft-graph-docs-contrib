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


requestBody := graphmodels.NewLanguageProficiency()
allowedAudiences := graphmodels.ORGANIZATION_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 

result, err := graphClient.Me().Profile().Languages().ByLanguageId("languageProficiency-id").Patch(context.Background(), requestBody, nil)


```