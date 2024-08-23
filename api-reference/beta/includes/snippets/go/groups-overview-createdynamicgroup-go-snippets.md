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

requestBody := graphmodels.NewGroup()
description := "Marketing department folks"
requestBody.SetDescription(&description) 
displayName := "Marketing department"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",
	"DynamicMembership",
}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "marketing"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled) 
membershipRule := "user.department -eq \"Marketing\""
requestBody.SetMembershipRule(&membershipRule) 
membershipRuleProcessingState := "on"
requestBody.SetMembershipRuleProcessingState(&membershipRuleProcessingState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```