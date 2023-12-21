---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
	"microsoftGraphConflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

bundles, err := graphClient.Drives().ByDriveId("drive-id").Bundles().Post(context.Background(), requestBody, nil)


```