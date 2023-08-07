---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewCopyPostRequestBody()
parentReference := graphmodels.NewItemReference()
path := "/drive/root:/Documents"
parentReference.SetPath(&path) 
requestBody.SetParentReference(parentReference)
name := "Copy of LargeFolder1"
requestBody.SetName(&name) 

copy, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Copy().Post(context.Background(), requestBody, nil)


```