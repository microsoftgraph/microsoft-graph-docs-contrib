---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewAddPostRequestBody()
name := "test5"
requestBody.SetName(&name) 
reference := "=Sheet1!$F$15:$N$27"
requestBody.SetReference(&reference) 
comment := "Comment for the named item"
requestBody.SetComment(&comment) 

add, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Names().Add().Post(context.Background(), requestBody, nil)


```