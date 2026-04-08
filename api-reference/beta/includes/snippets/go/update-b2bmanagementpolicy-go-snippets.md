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

requestBody := graphmodels.NewB2bManagementPolicy()
description := "Policy used for B2B features"
requestBody.SetDescription(&description) 
displayName := "Policy1"
requestBody.SetDisplayName(&displayName) 
definition := []string {
	"{'B2BManagementPolicy':{'Version':1}}",
}
requestBody.SetDefinition(definition)
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
b2bManagementPolicies, err := graphClient.Policies().B2bManagementPolicies().ByB2bManagementPolicyId("b2bManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```