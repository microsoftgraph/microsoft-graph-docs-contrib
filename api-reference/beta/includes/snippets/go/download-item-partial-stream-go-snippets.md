---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Range", "bytes=0-1023")

configuration := &graphdrives.DriveItemItemItemContentStreamRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").ContentStream().Get(context.Background(), configuration)


```