---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewAlert()
assignedTo := "secAdmin@contoso.com"
requestBody.SetAssignedTo(&assignedTo) 
classification := graphmodels.TRUEPOSITIVE_ALERTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.MALWARE_ALERTDETERMINATION 
requestBody.SetDetermination(&determination) 
status := graphmodels.INPROGRESS_ALERTSTATUS 
requestBody.SetStatus(&status) 
customDetails := graphmodelssecurity.NewDictionary()
additionalData := map[string]interface{}{
	"newKey" : "newValue", 
}
customDetails.SetAdditionalData(additionalData)
requestBody.SetCustomDetails(customDetails)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts_v2, err := graphClient.Security().Alerts_v2().ByAlertId("alert-id").Patch(context.Background(), requestBody, nil)


```