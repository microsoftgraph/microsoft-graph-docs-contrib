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


requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Executive Division"
requestBody.SetDisplayName(&displayName) 
membershipType := "Dynamic"
requestBody.SetMembershipType(&membershipType) 
membershipRule := "(user.country -eq \"United States\")"
requestBody.SetMembershipRule(&membershipRule) 
membershipRuleProcessingState := "On"
requestBody.SetMembershipRuleProcessingState(&membershipRuleProcessingState) 

administrativeUnits, err := graphClient.AdministrativeUnits().ByAdministrativeUnitId("administrativeUnit-id").Patch(context.Background(), requestBody, nil)


```