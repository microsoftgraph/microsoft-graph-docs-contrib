---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

requestBody := graphmodelsindustrydata.NewYearTimePeriodDefinition()
displayName := "Fiscal Year 2022"
requestBody.SetDisplayName(&displayName) 
endDate := 2023-06-15
requestBody.SetEndDate(&endDate) 
startDate := 2022-09-01
requestBody.SetStartDate(&startDate) 
year := graphmodelsindustrydata.NewYearReferenceValue()
code := "2022"
year.SetCode(&code) 
requestBody.SetYear(year)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
years, err := graphClient.External().IndustryData().Years().Post(context.Background(), requestBody, nil)


```