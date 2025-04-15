---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

requestBody := graphidentity.NewEvaluatePostRequestBody()
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 
additionalData := map[string]interface{}{
signInIdentity := graph.New()
servicePrincipalId := "c65b94a5-0049-439a-a6fd-bce307077730"
signInIdentity.SetServicePrincipalId(&servicePrincipalId) 
	requestBody.SetSignInIdentity(signInIdentity)
signInContext := graph.New()
	includeApplications := []string {
		"00000003-0000-0ff1-ce00-000000000000",
	}
	signInContext.SetIncludeApplications(includeApplications)
	requestBody.SetSignInContext(signInContext)
signInConditions := graph.New()
servicePrincipalRiskLevel := "high"
signInConditions.SetServicePrincipalRiskLevel(&servicePrincipalRiskLevel) 
country := "CA"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
	requestBody.SetSignInConditions(signInConditions)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```