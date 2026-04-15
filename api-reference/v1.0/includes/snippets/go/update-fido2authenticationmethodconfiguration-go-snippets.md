---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAuthenticationMethodConfiguration()
id := "Fido2"
requestBody.SetId(&id) 
state := graphmodels.DISABLED_AUTHENTICATIONMETHODSTATE 
requestBody.SetState(&state) 
isSelfServiceRegistrationAllowed := true
requestBody.SetIsSelfServiceRegistrationAllowed(&isSelfServiceRegistrationAllowed) 
isAttestationEnforced := true
requestBody.SetIsAttestationEnforced(&isAttestationEnforced) 
keyRestrictions := graphmodels.NewFido2KeyRestrictions()
isEnforced := false
keyRestrictions.SetIsEnforced(&isEnforced) 
enforcementType := graphmodels.BLOCK_FIDO2RESTRICTIONENFORCEMENTTYPE 
keyRestrictions.SetEnforcementType(&enforcementType) 
aaGuids := []string {

}
keyRestrictions.SetAaGuids(aaGuids)
requestBody.SetKeyRestrictions(keyRestrictions)


passkeyAuthenticationMethodTarget := graphmodels.NewPasskeyAuthenticationMethodTarget()
targetType := graphmodels.GROUP_AUTHENTICATIONMETHODTARGETTYPE 
passkeyAuthenticationMethodTarget.SetTargetType(&targetType) 
id := "all_users"
passkeyAuthenticationMethodTarget.SetId(&id) 
isRegistrationRequired := false
passkeyAuthenticationMethodTarget.SetIsRegistrationRequired(&isRegistrationRequired) 
allowedPasskeyProfiles := []uuid.UUID {
	uuid.MustParse("00000000-0000-0000-0000-000000000001"),
}
passkeyAuthenticationMethodTarget.SetAllowedPasskeyProfiles(allowedPasskeyProfiles)

includeTargets := []graphmodels.PasskeyAuthenticationMethodTargetable {
	passkeyAuthenticationMethodTarget,
}
requestBody.SetIncludeTargets(includeTargets)
excludeTargets := []graphmodels.ExcludeTargetable {

}
requestBody.SetExcludeTargets(excludeTargets)


passkeyProfile := graphmodels.NewPasskeyProfile()
id := "00000000-0000-0000-0000-000000000001"
passkeyProfile.SetId(&id) 
name := "Default passkey profile"
passkeyProfile.SetName(&name) 
passkeyTypes := graphmodels.DEVICEBOUND,SYNCED_PASSKEYTYPES 
passkeyProfile.SetPasskeyTypes(&passkeyTypes) 
attestationEnforcement := graphmodels.DISABLED_ATTESTATIONENFORCEMENT 
passkeyProfile.SetAttestationEnforcement(&attestationEnforcement) 
keyRestrictions := graphmodels.NewFido2KeyRestrictions()
isEnforced := false
keyRestrictions.SetIsEnforced(&isEnforced) 
enforcementType := graphmodels.ALLOW_FIDO2RESTRICTIONENFORCEMENTTYPE 
keyRestrictions.SetEnforcementType(&enforcementType) 
aaGuids := []string {

}
keyRestrictions.SetAaGuids(aaGuids)
passkeyProfile.SetKeyRestrictions(keyRestrictions)

passkeyProfiles := []graphmodels.PasskeyProfileable {
	passkeyProfile,
}
requestBody.SetPasskeyProfiles(passkeyProfiles)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationMethodConfigurations, err := graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurations().ByAuthenticationMethodConfigurationId("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```