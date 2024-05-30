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

requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Seattle District Technical Schools"
requestBody.SetDisplayName(&displayName) 
description := "Seattle district technical schools administration"
requestBody.SetDescription(&description) 
membershipType := "Dynamic"
requestBody.SetMembershipType(&membershipType) 
membershipRule := "(user.country -eq \"United States\")"
requestBody.SetMembershipRule(&membershipRule) 
membershipRuleProcessingState := "On"
requestBody.SetMembershipRuleProcessingState(&membershipRuleProcessingState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
administrativeUnits, err := graphClient.AdministrativeUnits().Post(context.Background(), requestBody, nil)


```