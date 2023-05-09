---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Drives/Item/Items/Item/CreateLink"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateLinkPostRequestBody()
type := "edit"
requestBody.SetType(&type) 
scope := "organization"
requestBody.SetScope(&scope) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```