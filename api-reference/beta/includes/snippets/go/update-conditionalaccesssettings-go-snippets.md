---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewConditionalAccessSettings()
signalingStatus := graphmodels.DISABLED_STATUS 
requestBody.SetSignalingStatus(&signalingStatus) 
additionalData := map[string]interface{}{
	"odataContext" : "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.NetworkAccess().Settings().ConditionalAccess().Patch(context.Background(), requestBody, nil)


```