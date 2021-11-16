---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAuthenticationMethodsPolicy()
registrationEnforcement := msgraphsdk.NewRegistrationEnforcement()
requestBody.SetRegistrationEnforcement(registrationEnforcement)
authenticationMethodsRegistrationCampaign := msgraphsdk.NewAuthenticationMethodsRegistrationCampaign()
registrationEnforcement.SetAuthenticationMethodsRegistrationCampaign(authenticationMethodsRegistrationCampaign)
snoozeDurationInDays := int32(1)
authenticationMethodsRegistrationCampaign.SetSnoozeDurationInDays(&snoozeDurationInDays)
state := "enabled"
authenticationMethodsRegistrationCampaign.SetState(&state)
authenticationMethodsRegistrationCampaign.SetExcludeTargets( []ExcludeTarget {
}
authenticationMethodsRegistrationCampaign.SetIncludeTargets( []AuthenticationMethodsRegistrationCampaignIncludeTarget {
	msgraphsdk.NewAuthenticationMethodsRegistrationCampaignIncludeTarget(),
	SetAdditionalData(map[string]interface{}{
		"id": "3ee3a9de-0a86-4e12-a287-9769accf1ba2",
		"targetType": "group",
		"targetedAuthenticationMethod": "microsoftAuthenticator",
	}
}
options := &msgraphsdk.AuthenticationMethodsPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().AuthenticationMethodsPolicy().Patch(options)


```