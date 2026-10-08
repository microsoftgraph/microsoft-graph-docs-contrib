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

requestBody := graphsecurity.NewMergeIncidentsPostRequestBody()
incidentIds := []string {
	"2972395",
	"2972396",
}
requestBody.SetIncidentIds(incidentIds)
incidentComment := "Merging related incidents from the same campaign"
requestBody.SetIncidentComment(&incidentComment) 
mergeReasons := graphmodels.SAMECAMPAIGN, SAMEACTOR_CORRELATIONREASON 
requestBody.SetMergeReasons(&mergeReasons) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityMergeIncidents, err := graphClient.Security().Incidents().MicrosoftGraphSecurityMergeIncidents().Post(context.Background(), requestBody, nil)


```