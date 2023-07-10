---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConnectedOrganization()
displayName := "Connected organization name"
requestBody.SetDisplayName(&displayName) 
description := "Connected organization description"
requestBody.SetDescription(&description) 


identitySource := graphmodels.NewDomainIdentitySource()
domainName := "example.com"
identitySource.SetDomainName(&domainName) 
displayName := "example.com"
identitySource.SetDisplayName(&displayName) 

identitySources := []graphmodels.IdentitySourceable {
	identitySource,
}
requestBody.SetIdentitySources(identitySources)
state := graphmodels.PROPOSED_CONNECTEDORGANIZATIONSTATE 
requestBody.SetState(&state) 

result, err := graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizations().Post(context.Background(), requestBody, nil)


```