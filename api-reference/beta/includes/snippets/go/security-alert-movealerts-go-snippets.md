---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewMoveAlertsPostRequestBody()
alertIds := []string {
	"da637551227677560813_-961444813",
	"da637551227677560813_-961444814",
}
requestBody.SetAlertIds(alertIds)
incidentId := "2972395"
requestBody.SetIncidentId(&incidentId) 
alertComment := "Moving alerts for investigation consolidation"
requestBody.SetAlertComment(&alertComment) 
newCorrelationReasons := graphmodels.SAMEASSET, TEMPORALPROXIMITY_CORRELATIONREASON 
requestBody.SetNewCorrelationReasons(&newCorrelationReasons) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityMoveAlerts, err := graphClient.Security().Alerts_v2().MicrosoftGraphSecurityMoveAlerts().Post(context.Background(), requestBody, nil)


```