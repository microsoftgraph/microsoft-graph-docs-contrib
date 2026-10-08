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

requestBody := graphmodels.NewOnPremAuthenticationPolicy()
description := "Policy definition to manage and control authentication settings."
requestBody.SetDescription(&description) 
displayName := "Policy name"
requestBody.SetDisplayName(&displayName) 
definition := []string {
	"{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}",
}
requestBody.SetDefinition(definition)
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
onPremAuthenticationPolicies, err := graphClient.Policies().OnPremAuthenticationPolicies().Post(context.Background(), requestBody, nil)


```