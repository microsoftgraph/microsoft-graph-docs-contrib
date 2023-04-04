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


requestBody := graphmodels.NewAuthenticationMethodsPolicy()
registrationEnforcement := graphmodels.NewRegistrationEnforcement()
authenticationMethodsRegistrationCampaign := graphmodels.NewAuthenticationMethodsRegistrationCampaign()
snoozeDurationInDays := int32(1)
authenticationMethodsRegistrationCampaign.SetSnoozeDurationInDays(&snoozeDurationInDays) 
state := graphmodels.ENABLED_ADVANCEDCONFIGSTATE 
authenticationMethodsRegistrationCampaign.SetState(&state) 
excludeTargets := []graphmodels.ExcludeTargetable {

}
authenticationMethodsRegistrationCampaign.SetExcludeTargets(excludeTargets)


authenticationMethodsRegistrationCampaignIncludeTarget := graphmodels.NewAuthenticationMethodsRegistrationCampaignIncludeTarget()
id := "3ee3a9de-0a86-4e12-a287-9769accf1ba2"
authenticationMethodsRegistrationCampaignIncludeTarget.SetId(&id) 
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
authenticationMethodsRegistrationCampaignIncludeTarget.SetTargetType(&targetType) 
targetedAuthenticationMethod := "microsoftAuthenticator"
authenticationMethodsRegistrationCampaignIncludeTarget.SetTargetedAuthenticationMethod(&targetedAuthenticationMethod) 

includeTargets := []graphmodels.AuthenticationMethodsRegistrationCampaignIncludeTargetable {
	authenticationMethodsRegistrationCampaignIncludeTarget,

}
authenticationMethodsRegistrationCampaign.SetIncludeTargets(includeTargets)
registrationEnforcement.SetAuthenticationMethodsRegistrationCampaign(authenticationMethodsRegistrationCampaign)
requestBody.SetRegistrationEnforcement(registrationEnforcement)

result, err := graphClient.Policies().AuthenticationMethodsPolicy().Patch(context.Background(), requestBody, nil)


```