---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewRestorePostRequestBody()
parentReference := graphmodels.NewItemReference()
id := "String"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
name := "String"
requestBody.SetName(&name) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Restore().Post(context.Background(), requestBody, nil)


```