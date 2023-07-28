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
displayName := "CSV connector"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.External().IndustryData().DataConnectors().Post(context.Background(), requestBody, nil)


```