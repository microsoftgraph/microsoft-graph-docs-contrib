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

requestBody := graphdrives.NewCopyPostRequestBody()
parentReference := graphmodels.NewItemReference()
driveId := "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B"
parentReference.SetDriveId(&driveId) 
id := "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
name := "contoso plan (copy).txt"
requestBody.SetName(&name) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copy, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Copy().Post(context.Background(), requestBody, nil)


```