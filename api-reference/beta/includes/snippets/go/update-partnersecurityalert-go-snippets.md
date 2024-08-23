---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelspartnersecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/partner/security"
	  //other-imports
)

requestBody := graphmodelspartnersecurity.NewPartnerSecurityAlert()
status := graphmodels.RESOLVED_SECURITYALERTSTATUS 
requestBody.SetStatus(&status) 
resolvedReason := graphmodels.FRAUD_SECURITYALERTRESOLVEDREASON 
requestBody.SetResolvedReason(&resolvedReason) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
securityAlerts, err := graphClient.Security().Partner().SecurityAlerts().ByPartnerSecurityAlertId("partnerSecurityAlert-id").Patch(context.Background(), requestBody, nil)


```