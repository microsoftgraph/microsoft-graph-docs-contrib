---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDriveItem()
name := "New Folder"
requestBody.SetName(&name) 
folder := graphmodels.NewFolder()
requestBody.SetFolder(folder)
additionalData := map[string]interface{}{
	"@microsoft.graph.conflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
children, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Children().Post(context.Background(), requestBody, nil)


```