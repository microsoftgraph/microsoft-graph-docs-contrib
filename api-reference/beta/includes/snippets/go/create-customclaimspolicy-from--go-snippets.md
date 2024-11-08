---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCustomClaimsPolicy()
includeBasicClaimSet := boolean
requestBody.SetIncludeBasicClaimSet(&includeBasicClaimSet) 
includeApplicationIdInIssuer := boolean
requestBody.SetIncludeApplicationIdInIssuer(&includeApplicationIdInIssuer) 
audienceOverride := "String"
requestBody.SetAudienceOverride(&audienceOverride) 


customClaimBase := graphmodels.NewCustomClaim()

claims := []graphmodels.CustomClaimBaseable {
	customClaimBase,
}
requestBody.SetClaims(claims)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
claimsPolicy, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").ClaimsPolicy().Put(context.Background(), requestBody, nil)


```