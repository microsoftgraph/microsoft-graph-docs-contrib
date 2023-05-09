---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
	"microsoftGraphConflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Post(context.Background(), requestBody, nil)


```