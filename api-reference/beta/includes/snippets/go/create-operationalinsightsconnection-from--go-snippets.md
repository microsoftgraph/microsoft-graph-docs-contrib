---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelswindowsupdates.NewResourceConnection()
azureSubscriptionId := "322ec614-e9c2-4cd5-a55c-5711fdecf02e"
requestBody.SetAzureSubscriptionId(&azureSubscriptionId) 
azureResourceGroupName := "target-resource-group"
requestBody.SetAzureResourceGroupName(&azureResourceGroupName) 
workspaceName := "my-workspace"
requestBody.SetWorkspaceName(&workspaceName) 

resourceConnections, err := graphClient.Admin().Windows().Updates().ResourceConnections().Post(context.Background(), requestBody, nil)


```