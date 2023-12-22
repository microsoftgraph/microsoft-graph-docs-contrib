---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewCreateLinkPostRequestBody()
type := "view"
requestBody.SetType(&type) 
password := "ThisIsMyPrivatePassword"
requestBody.SetPassword(&password) 
scope := "anonymous"
requestBody.SetScope(&scope) 
retainInheritedPermissions := false
requestBody.SetRetainInheritedPermissions(&retainInheritedPermissions) 

createLink, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```