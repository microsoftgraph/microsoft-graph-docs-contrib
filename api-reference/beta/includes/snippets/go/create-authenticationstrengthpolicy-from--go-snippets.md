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

requestBody := graphmodels.NewAuthenticationStrengthPolicy()
displayName := "Example"
requestBody.SetDisplayName(&displayName) 
requirementsSatisfied := graphmodels.MFA_AUTHENTICATIONSTRENGTHREQUIREMENTS 
requestBody.SetRequirementsSatisfied(&requirementsSatisfied) 
allowedCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	requestBody.SetAuthenticationMethodModes(&authenticationMethodModes)
}
requestBody.SetAllowedCombinations(allowedCombinations)


authenticationCombinationConfiguration := graphmodels.NewFido2CombinationConfiguration()
id := "42235320-c8db-4d8c-9344-8f1ce87f734b"
authenticationCombinationConfiguration.SetId(&id) 
appliesToCombinations := []graphmodels.AuthenticationMethodModesable {
	authenticationMethodModes := graphmodels.FIDO2_AUTHENTICATIONMETHODMODES 
	authenticationCombinationConfiguration.SetAuthenticationMethodModes(&authenticationMethodModes)
}
authenticationCombinationConfiguration.SetAppliesToCombinations(appliesToCombinations)
allowedAAGUIDs := []string {
	"de1e552d-db1d-4423-a619-566b625cdc84",
	"90a3ccdf-635c-4729-a248-9b709135078f",
}
authenticationCombinationConfiguration.SetAllowedAAGUIDs(allowedAAGUIDs)

combinationConfigurations := []graphmodels.AuthenticationCombinationConfigurationable {
	authenticationCombinationConfiguration,
}
requestBody.SetCombinationConfigurations(combinationConfigurations)
additionalData := map[string]interface{}{
	"combinationConfigurations@odata.context" : "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies('5790842a-5bab-44c2-9cf1-b38d675b70ea')/combinationConfigurations", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationStrengthPolicies, err := graphClient.Policies().AuthenticationStrengthPolicies().Post(context.Background(), requestBody, nil)


```