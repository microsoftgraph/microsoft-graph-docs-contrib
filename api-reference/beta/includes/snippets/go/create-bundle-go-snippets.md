---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDriveItem()
name := "Just some files"
requestBody.SetName(&name) 
bundle := graphmodels.NewBundle()
requestBody.SetBundle(bundle)


driveItem := graphmodels.NewDriveItem()
id := "1234asdf"
driveItem.SetId(&id) 
driveItem1 := graphmodels.NewDriveItem()
id := "1234qwerty"
driveItem1.SetId(&id) 

children := []graphmodels.DriveItemable {
	driveItem,
	driveItem1,
}
requestBody.SetChildren(children)
additionalData := map[string]interface{}{
	"@microsoft.graph.conflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
bundles, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Post(context.Background(), requestBody, nil)


```