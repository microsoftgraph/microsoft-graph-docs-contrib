---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  graphmodelspartnersbilling "github.com/microsoftgraph/msgraph-beta-sdk-go/models/partners/billing"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphreports.NewExportPostRequestBody()
currencyCode := "USD"
requestBody.SetCurrencyCode(&currencyCode) 
attributeSet := graphmodels.FULL_ATTRIBUTESET 
requestBody.SetAttributeSet(&attributeSet) 
billingPeriod := graphmodels.CURRENT_BILLINGPERIOD 
requestBody.SetBillingPeriod(&billingPeriod) 

microsoftGraphPartnersBillingExport, err := graphClient.Reports().Partners().Billing().Usage().Unbilled().MicrosoftGraphPartnersBillingExport().Post(context.Background(), requestBody, nil)


```