---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPersonAnnualEvent()
allowedAudiences := graphmodels.CONTACTS_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
anniversaries, err := graphClient.Me().Profile().Anniversaries().ByPersonAnnualEventId("personAnnualEvent-id").Patch(context.Background(), requestBody, nil)


```