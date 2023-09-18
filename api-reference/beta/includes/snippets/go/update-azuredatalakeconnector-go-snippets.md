---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsindustrydata.NewIndustryDataConnector()
displayName := "API Monitor 60201009"
requestBody.SetDisplayName(&displayName) 

dataConnectors, err := graphClient.External().IndustryData().DataConnectors().ByIndustryDataConnectorId("industryDataConnector-id").Patch(context.Background(), requestBody, nil)


```