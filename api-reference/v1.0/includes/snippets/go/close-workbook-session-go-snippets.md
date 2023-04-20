---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/CloseSession"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphconfig.DriveItemItemItemWorkbookCloseSessionRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCloseSessionPostRequestBody()

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().CloseSession().Post(context.Background(), requestBody, configuration)


```