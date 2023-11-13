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
name := "new-file-name.docx"
requestBody.SetName(&name) 

items, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Patch(context.Background(), requestBody, nil)


```