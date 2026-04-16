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

requestBody := graphmodels.NewApplication()
displayName := "MyAppName"
requestBody.SetDisplayName(&displayName) 
signInAudience := "AzureADMultipleOrgs"
requestBody.SetSignInAudience(&signInAudience) 
signInAudienceRestrictions := graphmodels.NewAllowedTenantsAudience()
isHomeTenantAllowed := true
signInAudienceRestrictions.SetIsHomeTenantAllowed(&isHomeTenantAllowed) 
allowedTenantIds := []string {
	"818ce016-78c2-457c-91d7-c02c2faaa5fe",
	"c62670b0-53a1-4a38-b26c-4093cbaa510a",
}
signInAudienceRestrictions.SetAllowedTenantIds(allowedTenantIds)
requestBody.SetSignInAudienceRestrictions(signInAudienceRestrictions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().Post(context.Background(), requestBody, nil)


```