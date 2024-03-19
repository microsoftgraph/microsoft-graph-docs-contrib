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
invoiceId := "G016907411"
requestBody.SetInvoiceId(&invoiceId) 
attributeSet := graphmodels.FULL_ATTRIBUTESET 
requestBody.SetAttributeSet(&attributeSet) 

microsoftGraphPartnersBillingExport, err := graphClient.Reports().Partners().Billing().Usage().Billed().MicrosoftGraphPartnersBillingExport().Post(context.Background(), requestBody, nil)


```