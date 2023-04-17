---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/CreateSession"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "respond-async")

configuration := &graphconfig.DriveItemItemItemWorkbookCreateSessionRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCreateSessionPostRequestBody()
persistChanges := true
requestBody.SetPersistChanges(&persistChanges) 

result, err := graphClient.DrivesById("drive-id").ItemsById("driveItem-id").Workbook().CreateSession().Post(context.Background(), requestBody, configuration)


```