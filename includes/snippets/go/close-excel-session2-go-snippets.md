---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphdrives.DriveItemItemItemWorkbookCloseSessionRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphdrives.NewCloseSessionPostRequestBody()

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().CloseSession().Post(context.Background(), requestBody, configuration)


```