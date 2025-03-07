---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

requestBody := graphmodelsindustrydata.NewIndustryDataConnector()
displayName := "CSV connector"
requestBody.SetDisplayName(&displayName) 
fileFormat := graphmodelsindustrydata.NewFileFormatReferenceValue()
code := "schoolDataSyncV1"
fileFormat.SetCode(&code) 
requestBody.SetFileFormat(fileFormat)
additionalData := map[string]interface{}{
	"sourceSystem@odata.bind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
dataConnectors, err := graphClient.External().IndustryData().DataConnectors().Post(context.Background(), requestBody, nil)


```