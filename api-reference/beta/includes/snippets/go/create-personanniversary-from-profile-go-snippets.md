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
type := graphmodels.BIRTHDAY_PERSONANNUALEVENTTYPE 
requestBody.SetType(&type) 
date := 1980-01-08
requestBody.SetDate(&date) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
anniversaries, err := graphClient.Me().Profile().Anniversaries().Post(context.Background(), requestBody, nil)


```