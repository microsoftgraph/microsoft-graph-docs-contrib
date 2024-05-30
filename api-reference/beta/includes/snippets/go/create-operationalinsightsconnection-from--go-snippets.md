---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

requestBody := graphmodelswindowsupdates.NewResourceConnection()
azureSubscriptionId := "322ec614-e9c2-4cd5-a55c-5711fdecf02e"
requestBody.SetAzureSubscriptionId(&azureSubscriptionId) 
azureResourceGroupName := "target-resource-group"
requestBody.SetAzureResourceGroupName(&azureResourceGroupName) 
workspaceName := "my-workspace"
requestBody.SetWorkspaceName(&workspaceName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceConnections, err := graphClient.Admin().Windows().Updates().ResourceConnections().Post(context.Background(), requestBody, nil)


```