---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIndustryDataConnector()
displayName := "API Monitor 60201009"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.External().IndustryData().DataConnectors().ByDataConnectorId("industryDataConnector-id").Patch(context.Background(), requestBody, nil)


```