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
displayName := "Executive Division"
requestBody.SetDisplayName(&displayName) 
membershipType := "Dynamic"
requestBody.SetMembershipType(&membershipType) 
membershipRule := "(user.country -eq \"United States\")"
requestBody.SetMembershipRule(&membershipRule) 
membershipRuleProcessingState := "On"
requestBody.SetMembershipRuleProcessingState(&membershipRuleProcessingState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
administrativeUnits, err := graphClient.AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").Patch(context.Background(), requestBody, nil)


```