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

requestBody := graphdrives.NewAddPostRequestBody()
name := "test5"
requestBody.SetName(&name) 
reference := "=Sheet1!$F$15:$N$27"
requestBody.SetReference(&reference) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
add, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Names().Add().Post(context.Background(), requestBody, nil)


```