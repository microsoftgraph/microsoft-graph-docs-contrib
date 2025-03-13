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
name := "My Day at the Beach"
requestBody.SetName(&name) 
bundle := graphmodels.NewBundle()
album := graphmodels.NewAlbum()
bundle.SetAlbum(album)
requestBody.SetBundle(bundle)


driveItem := graphmodels.NewDriveItem()
id := "1234asdf"
driveItem.SetId(&id) 

children := []graphmodels.DriveItemable {
	driveItem,
}
requestBody.SetChildren(children)
additionalData := map[string]interface{}{
	"@microsoft.graph.conflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
bundles, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Post(context.Background(), requestBody, nil)


```