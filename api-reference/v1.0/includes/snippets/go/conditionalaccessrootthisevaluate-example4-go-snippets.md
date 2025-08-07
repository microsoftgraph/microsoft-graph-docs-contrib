---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphidentity.NewEvaluatePostRequestBody()
signInIdentity := graphmodels.NewServicePrincipalSignIn()
servicePrincipalId := "c65b94a5-0049-439a-a6fd-bce307077730"
signInIdentity.SetServicePrincipalId(&servicePrincipalId) 
requestBody.SetSignInIdentity(signInIdentity)
signInContext := graphmodels.NewApplicationContext()
includeApplications := []string {
	"00000003-0000-0ff1-ce00-000000000000",
}
signInContext.SetIncludeApplications(includeApplications)
requestBody.SetSignInContext(signInContext)
signInConditions := graphmodels.NewSignInConditions()
servicePrincipalRiskLevel := graphmodels.HIGH_RISKLEVEL 
signInConditions.SetServicePrincipalRiskLevel(&servicePrincipalRiskLevel) 
country := "CA"
signInConditions.SetCountry(&country) 
ipAddress := "40.77.182.32"
signInConditions.SetIpAddress(&ipAddress) 
requestBody.SetSignInConditions(signInConditions)
appliedPoliciesOnly := true
requestBody.SetAppliedPoliciesOnly(&appliedPoliciesOnly) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluate, err := graphClient.Identity().ConditionalAccess().Evaluate().PostAsEvaluatePostResponse(context.Background(), requestBody, nil)


```