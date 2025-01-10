---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewCopyPostRequestBody()
parentReference := graphmodels.NewItemReference()
driveId := "b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop"
parentReference.SetDriveId(&driveId) 
id := "DCD0D3AD-8989-4F23-A5A2-2C086050513F"
parentReference.SetId(&id) 
requestBody.SetParentReference(parentReference)
includeAllVersionHistory := true
requestBody.SetIncludeAllVersionHistory(&includeAllVersionHistory) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copy, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Copy().Post(context.Background(), requestBody, nil)


```