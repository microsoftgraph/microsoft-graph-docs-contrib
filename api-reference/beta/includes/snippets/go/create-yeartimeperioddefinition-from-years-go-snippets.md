---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.External().IndustryData().Years().Post(context.Background(), requestBody, nil)


```