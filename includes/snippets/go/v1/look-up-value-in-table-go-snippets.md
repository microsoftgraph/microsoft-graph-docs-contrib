---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphdrives.DriveItemItemItemWorkbookFunctionsVlookupRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphdrives.NewVlookupPostRequestBody()
lookupValue := "pear"
requestBody.SetLookupValue(&lookupValue) 
tableArray := graphmodels.NewJson()
additionalData := map[string]interface{}{
	"address" : "Sheet1!B2:C7", 
}
tableArray.SetAdditionalData(additionalData)
requestBody.SetTableArray(tableArray)
colIndexNum := int32(2)
requestBody.SetColIndexNum(&colIndexNum) 
rangeLookup := false
requestBody.SetRangeLookup(&rangeLookup) 

vlookup, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Functions().Vlookup().Post(context.Background(), requestBody, configuration)


```