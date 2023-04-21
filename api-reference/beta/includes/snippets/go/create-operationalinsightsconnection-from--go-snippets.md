---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//windowsUpdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewResourceConnection()
additionalData := map[string]interface{}{
	"azureSubscriptionId" : "322ec614-e9c2-4cd5-a55c-5711fdecf02e", 
	"azureResourceGroupName" : "target-resource-group", 
	"workspaceName" : "my-workspace", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Admin().Windows().Updates().ResourceConnections().Post(context.Background(), requestBody, nil)


```