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
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewRestorePostRequestBody()
parentReference := graphmodels.NewItemReference()
id := "String"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
name := "String"
requestBody.SetName(&name) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
restore, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Restore().Post(context.Background(), requestBody, nil)


```