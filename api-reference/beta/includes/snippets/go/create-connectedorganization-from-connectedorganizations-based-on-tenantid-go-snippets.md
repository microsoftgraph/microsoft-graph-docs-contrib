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

requestBody := graphmodels.NewConnectedOrganization()
displayName := "Connected organization name"
requestBody.SetDisplayName(&displayName) 
description := "Connected organization description"
requestBody.SetDescription(&description) 


identitySource := graphmodels.NewAzureActiveDirectoryTenant()
displayName := "Contoso"
identitySource.SetDisplayName(&displayName) 
tenantId := "aaaabbbb-0000-cccc-1111-dddd2222eeee"
identitySource.SetTenantId(&tenantId) 

identitySources := []graphmodels.IdentitySourceable {
	identitySource,
}
requestBody.SetIdentitySources(identitySources)
state := graphmodels.PROPOSED_CONNECTEDORGANIZATIONSTATE 
requestBody.SetState(&state) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
connectedOrganizations, err := graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizations().Post(context.Background(), requestBody, nil)


```