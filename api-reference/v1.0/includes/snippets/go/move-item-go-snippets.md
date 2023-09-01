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
parentReference := graphmodels.NewItemReference()
id := "{new-parent-folder-id}"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
name := "new-item-name.txt"
requestBody.SetName(&name) 

items, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Patch(context.Background(), requestBody, nil)


```