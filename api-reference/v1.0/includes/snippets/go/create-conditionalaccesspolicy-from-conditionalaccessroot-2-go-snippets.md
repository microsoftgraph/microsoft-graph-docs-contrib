---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConditionalAccessPolicy()
displayName := "Block access to EXO non-trusted regions."
requestBody.SetDisplayName(&displayName) 
state := graphmodels.ENABLED_CONDITIONALACCESSPOLICYSTATE 
requestBody.SetState(&state) 
conditions := graphmodels.NewConditionalAccessConditionSet()
clientAppTypes := []graphmodels.ConditionalAccessClientAppable {
	conditionalAccessClientApp := graphmodels.ALL_CONDITIONALACCESSCLIENTAPP 
	conditions.SetConditionalAccessClientApp(&conditionalAccessClientApp) 

}
conditions.SetClientAppTypes(clientAppTypes)
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
locations := graphmodels.NewConditionalAccessLocations()
includeLocations := []string {
	"198ad66e-87b3-4157-85a3-8a7b51794ee9",

}
locations.SetIncludeLocations(includeLocations)
conditions.SetLocations(locations)
requestBody.SetConditions(conditions)
grantControls := graphmodels.NewConditionalAccessGrantControls()
operator := "OR"
grantControls.SetOperator(&operator) 
builtInControls := []graphmodels.ConditionalAccessGrantControlable {
	conditionalAccessGrantControl := graphmodels.BLOCK_CONDITIONALACCESSGRANTCONTROL 
	grantControls.SetConditionalAccessGrantControl(&conditionalAccessGrantControl) 

}
grantControls.SetBuiltInControls(builtInControls)
requestBody.SetGrantControls(grantControls)

result, err := graphClient.Identity().ConditionalAccess().Policies().Post(context.Background(), requestBody, nil)


```