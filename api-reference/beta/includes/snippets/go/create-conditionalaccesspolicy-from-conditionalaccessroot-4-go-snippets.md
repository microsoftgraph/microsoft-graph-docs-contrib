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


requestBody := graphmodels.NewConditionalAccessPolicy()
displayName := "Require MFA to EXO from non-complaint devices."
requestBody.SetDisplayName(&displayName) 
state := graphmodels.ENABLED_CONDITIONALACCESSPOLICYSTATE 
requestBody.SetState(&state) 
conditions := graphmodels.NewConditionalAccessConditionSet()
applications := graphmodels.NewConditionalAccessApplications()
includeApplications := []string {
	"00000002-0000-0ff1-ce00-000000000000",

}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
users := graphmodels.NewConditionalAccessUsers()
includeGroups := []string {
	"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba",

}
users.SetIncludeGroups(includeGroups)
conditions.SetUsers(users)
devices := graphmodels.NewConditionalAccessDevices()
includeDevices := []string {
	"All",

}
devices.SetIncludeDevices(includeDevices)
excludeDevices := []string {
	"Compliant",

}
devices.SetExcludeDevices(excludeDevices)
conditions.SetDevices(devices)
requestBody.SetConditions(conditions)
grantControls := graphmodels.NewConditionalAccessGrantControls()
operator := "OR"
grantControls.SetOperator(&operator) 
builtInControls := []graphmodels.ConditionalAccessGrantControlable {
	conditionalAccessGrantControl := graphmodels.MFA_CONDITIONALACCESSGRANTCONTROL 
	grantControls.SetConditionalAccessGrantControl(&conditionalAccessGrantControl) 

}
grantControls.SetBuiltInControls(builtInControls)
requestBody.SetGrantControls(grantControls)

result, err := graphClient.Identity().ConditionalAccess().Policies().Post(context.Background(), requestBody, nil)


```