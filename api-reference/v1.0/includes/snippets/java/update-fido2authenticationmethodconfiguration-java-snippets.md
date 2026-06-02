---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Fido2AuthenticationMethodConfiguration authenticationMethodConfiguration = new Fido2AuthenticationMethodConfiguration();
authenticationMethodConfiguration.setOdataType("#microsoft.graph.fido2AuthenticationMethodConfiguration");
authenticationMethodConfiguration.setId("Fido2");
authenticationMethodConfiguration.setState(AuthenticationMethodState.Disabled);
authenticationMethodConfiguration.setIsSelfServiceRegistrationAllowed(true);
authenticationMethodConfiguration.setIsAttestationEnforced(true);
Fido2KeyRestrictions keyRestrictions = new Fido2KeyRestrictions();
keyRestrictions.setIsEnforced(false);
keyRestrictions.setEnforcementType(Fido2RestrictionEnforcementType.Block);
LinkedList<String> aaGuids = new LinkedList<String>();
keyRestrictions.setAaGuids(aaGuids);
authenticationMethodConfiguration.setKeyRestrictions(keyRestrictions);
LinkedList<PasskeyAuthenticationMethodTarget> includeTargets = new LinkedList<PasskeyAuthenticationMethodTarget>();
PasskeyAuthenticationMethodTarget passkeyAuthenticationMethodTarget = new PasskeyAuthenticationMethodTarget();
passkeyAuthenticationMethodTarget.setTargetType(AuthenticationMethodTargetType.Group);
passkeyAuthenticationMethodTarget.setId("all_users");
passkeyAuthenticationMethodTarget.setIsRegistrationRequired(false);
LinkedList<UUID> allowedPasskeyProfiles = new LinkedList<UUID>();
allowedPasskeyProfiles.add(UUID.fromString("00000000-0000-0000-0000-000000000001"));
passkeyAuthenticationMethodTarget.setAllowedPasskeyProfiles(allowedPasskeyProfiles);
includeTargets.add(passkeyAuthenticationMethodTarget);
authenticationMethodConfiguration.setIncludeTargets(includeTargets);
LinkedList<ExcludeTarget> excludeTargets = new LinkedList<ExcludeTarget>();
authenticationMethodConfiguration.setExcludeTargets(excludeTargets);
LinkedList<PasskeyProfile> passkeyProfiles = new LinkedList<PasskeyProfile>();
PasskeyProfile passkeyProfile = new PasskeyProfile();
passkeyProfile.setId("00000000-0000-0000-0000-000000000001");
passkeyProfile.setName("Default passkey profile");
passkeyProfile.setPasskeyTypes(EnumSet.of(PasskeyTypes.DeviceBound, PasskeyTypes.Synced));
passkeyProfile.setAttestationEnforcement(AttestationEnforcement.Disabled);
Fido2KeyRestrictions keyRestrictions1 = new Fido2KeyRestrictions();
keyRestrictions1.setIsEnforced(false);
keyRestrictions1.setEnforcementType(Fido2RestrictionEnforcementType.Allow);
LinkedList<String> aaGuids1 = new LinkedList<String>();
keyRestrictions1.setAaGuids(aaGuids1);
passkeyProfile.setKeyRestrictions(keyRestrictions1);
passkeyProfiles.add(passkeyProfile);
authenticationMethodConfiguration.setPasskeyProfiles(passkeyProfiles);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```