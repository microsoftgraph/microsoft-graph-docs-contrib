---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewConditionalAccessSettings()
signalingStatus := graphmodels.DISABLED_STATUS 
requestBody.SetSignalingStatus(&signalingStatus) 
additionalData := map[string]interface{}{
	"@odata.context" : "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
conditionalAccess, err := graphClient.NetworkAccess().Settings().ConditionalAccess().Patch(context.Background(), requestBody, nil)


```