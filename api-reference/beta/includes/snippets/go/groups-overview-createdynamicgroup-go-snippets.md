---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Groups().Post(context.Background(), requestBody, nil)


```