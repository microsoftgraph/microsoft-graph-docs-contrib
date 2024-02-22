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
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphdrives.DriveItemItemItemWorkbookRefreshSessionRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphdrives.NewRefreshSessionPostRequestBody()

graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().RefreshSession().Post(context.Background(), requestBody, configuration)


```