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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.Identity().ConditionalAccess().Policies().Post(context.Background(), requestBody, nil)


```