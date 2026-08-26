---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecuritycasemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security/casemanagement"
	  //other-imports
)

requestBody := graphmodelssecuritycasemanagement.NewCase()
displayName := "Incident Case MS-002"
requestBody.SetDisplayName(&displayName) 
status := "InProgress"
requestBody.SetStatus(&status) 
classification := graphmodels.TRUEPOSITIVE_INCIDENTCLASSIFICATION 
requestBody.SetClassification(&classification) 
determination := graphmodels.PHISHING_INCIDENTDETERMINATION 
requestBody.SetDetermination(&determination) 
severity := graphmodels.HIGH_INCIDENTSEVERITY 
requestBody.SetSeverity(&severity) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cases, err := graphClient.Security().CaseManagement().Cases().ByCaseId("case-id").Patch(context.Background(), requestBody, nil)


```