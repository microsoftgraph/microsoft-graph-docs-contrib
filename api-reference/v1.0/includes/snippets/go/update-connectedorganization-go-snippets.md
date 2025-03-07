---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewConnectedOrganization()
displayName := "Connected organization new name"
requestBody.SetDisplayName(&displayName) 
description := "Connected organization new description"
requestBody.SetDescription(&description) 
state := graphmodels.CONFIGURED_CONNECTEDORGANIZATIONSTATE 
requestBody.SetState(&state) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
connectedOrganizations, err := graphClient.IdentityGovernance().EntitlementManagement().ConnectedOrganizations().ByConnectedOrganizationId("connectedOrganization-id").Patch(context.Background(), requestBody, nil)


```