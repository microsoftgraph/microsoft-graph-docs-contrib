---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/CreateLink"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateLinkPostRequestBody()
type := "view"
requestBody.SetType(&type) 
password := "ThisIsMyPrivatePassword"
requestBody.SetPassword(&password) 
scope := "anonymous"
requestBody.SetScope(&scope) 
retainInheritedPermissions := false
requestBody.SetRetainInheritedPermissions(&retainInheritedPermissions) 

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```