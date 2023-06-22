---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Workbook/Functions/Vlookup"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphconfig.DriveItemItemItemWorkbookFunctionsVlookupRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewVlookupPostRequestBody()
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

result, err := graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Workbook().Functions().Vlookup().Post(context.Background(), requestBody, configuration)


```