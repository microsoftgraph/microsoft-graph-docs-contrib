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
name := "New Folder"
requestBody.SetName(&name) 
folder := graphmodels.NewFolder()
requestBody.SetFolder(folder)
additionalData := map[string]interface{}{
	"microsoftGraphConflictBehavior" : "rename", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Children().Post(context.Background(), requestBody, nil)


```