---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

requestBody := graphdrives.NewCreateLinkPostRequestBody()
type := "view"
requestBody.SetType(&type) 
password := "ThisIsMyPrivatePassword"
requestBody.SetPassword(&password) 
scope := "anonymous"
requestBody.SetScope(&scope) 
retainInheritedPermissions := false
requestBody.SetRetainInheritedPermissions(&retainInheritedPermissions) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createLink, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").CreateLink().Post(context.Background(), requestBody, nil)


```