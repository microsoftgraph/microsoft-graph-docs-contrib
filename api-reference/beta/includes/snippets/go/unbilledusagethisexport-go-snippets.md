---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  graphmodelspartnersbilling "github.com/microsoftgraph/msgraph-beta-sdk-go/models/partners/billing"
	  //other-imports
)

requestBody := graphreports.NewExportPostRequestBody()
currencyCode := "USD"
requestBody.SetCurrencyCode(&currencyCode) 
attributeSet := graphmodels.FULL_ATTRIBUTESET 
requestBody.SetAttributeSet(&attributeSet) 
billingPeriod := graphmodels.CURRENT_BILLINGPERIOD 
requestBody.SetBillingPeriod(&billingPeriod) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphPartnersBillingExport, err := graphClient.Reports().Partners().Billing().Usage().Unbilled().MicrosoftGraphPartnersBillingExport().Post(context.Background(), requestBody, nil)


```