---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Copy"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCopyPostRequestBody()
parentReference := graphmodels.NewItemReference()
driveId := "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B"
parentReference.SetDriveId(&driveId) 
id := "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
name := "contoso plan (copy).txt"
requestBody.SetName(&name) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Copy().Post(context.Background(), requestBody, nil)


```