---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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
additionalData := map[string]interface{}{
	"id" : "3ee3a9de-0a86-4e12-a287-9769accf1ba2", 
	"targetType" : "group", 
	"targetedAuthenticationMethod" : "microsoftAuthenticator", 
}
authenticationMethodsRegistrationCampaignIncludeTarget.SetAdditionalData(additionalData)

includeTargets := []graphmodels.AuthenticationMethodsRegistrationCampaignIncludeTargetable {
	authenticationMethodsRegistrationCampaignIncludeTarget,

}
authenticationMethodsRegistrationCampaign.SetIncludeTargets(includeTargets)
registrationEnforcement.SetAuthenticationMethodsRegistrationCampaign(authenticationMethodsRegistrationCampaign)
requestBody.SetRegistrationEnforcement(registrationEnforcement)


authenticationMethodConfiguration := graphmodels.NewAuthenticationMethodConfiguration()
id := "Fido2"
authenticationMethodConfiguration.SetId(&id) 
state := graphmodels.DISABLED_AUTHENTICATIONMETHODSTATE 
authenticationMethodConfiguration.SetState(&state) 
additionalData := map[string]interface{}{
	isSelfServiceRegistrationAllowed := false
authenticationMethodConfiguration.SetIsSelfServiceRegistrationAllowed(&isSelfServiceRegistrationAllowed) 
	isAttestationEnforced := false
authenticationMethodConfiguration.SetIsAttestationEnforced(&isAttestationEnforced) 
keyRestrictions := graphmodels.New()
	isEnforced := false
keyRestrictions.SetIsEnforced(&isEnforced) 
enforcementType := "block"
keyRestrictions.SetEnforcementType(&enforcementType) 
	aaGuids := []graphmodels.able {

	}
	keyRestrictions.SetAaGuids(aaGuids)
	authenticationMethodConfiguration.SetKeyRestrictions(keyRestrictions)
}
authenticationMethodConfiguration.SetAdditionalData(additionalData)

authenticationMethodConfigurations := []graphmodels.AuthenticationMethodConfigurationable {
	authenticationMethodConfiguration,

}
requestBody.SetAuthenticationMethodConfigurations(authenticationMethodConfigurations)
additionalData := map[string]interface{}{
	"@odata.context" : "https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Policies().AuthenticationMethodsPolicy().Patch(requestBody)


```