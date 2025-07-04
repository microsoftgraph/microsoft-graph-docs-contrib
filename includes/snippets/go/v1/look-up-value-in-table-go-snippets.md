---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("workbook-session-id", "{session-id}")

configuration := &graphdrives.ItemItemsItemWorkbookFunctionsVlookupRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphdrives.NewVlookupPostRequestBody()
lookupValue := "pear"
requestBody.SetLookupValue(&lookupValue) 
tableArray := graph.NewUntypedNode()
address := "Sheet1!B2:C7"
tableArray.SetAddress(&address) 
requestBody.SetTableArray(tableArray)
colIndexNum := float64(2)
requestBody.SetColIndexNum(&colIndexNum) 
rangeLookup := false
requestBody.SetRangeLookup(&rangeLookup) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
vlookup, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Functions().Vlookup().Post(context.Background(), requestBody, configuration)


```