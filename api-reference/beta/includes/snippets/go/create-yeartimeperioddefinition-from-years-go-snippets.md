---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewYearTimePeriodDefinition()
displayName := "Fiscal Year 2022"
requestBody.SetDisplayName(&displayName) 
endDate := 2023-06-15
requestBody.SetEndDate(&endDate) 
startDate := 2022-09-01
requestBody.SetStartDate(&startDate) 
year := graphmodels.NewYearReferenceValue()
code := "2022"
year.SetCode(&code) 
requestBody.SetYear(year)

result, err := graphClient.External().IndustryData().Years().Post(context.Background(), requestBody, nil)


```