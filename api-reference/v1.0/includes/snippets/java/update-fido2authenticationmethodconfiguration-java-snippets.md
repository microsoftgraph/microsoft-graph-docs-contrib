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
LinkedList<AuthenticationMethodTarget> includeTargets = new LinkedList<AuthenticationMethodTarget>();
AuthenticationMethodTarget authenticationMethodTarget = new AuthenticationMethodTarget();
authenticationMethodTarget.setTargetType(AuthenticationMethodTargetType.Group);
authenticationMethodTarget.setId("all_users");
authenticationMethodTarget.setIsRegistrationRequired(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> allowedPasskeyProfiles = new LinkedList<String>();
allowedPasskeyProfiles.add("00000000-0000-0000-0000-000000000001");
additionalData.put("allowedPasskeyProfiles", allowedPasskeyProfiles);
authenticationMethodTarget.setAdditionalData(additionalData);
includeTargets.add(authenticationMethodTarget);
authenticationMethodConfiguration.setIncludeTargets(includeTargets);
LinkedList<ExcludeTarget> excludeTargets = new LinkedList<ExcludeTarget>();
authenticationMethodConfiguration.setExcludeTargets(excludeTargets);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
LinkedList<Object> passkeyProfiles = new LinkedList<Object>();
 property1 = new ();
property1.setId("00000000-0000-0000-0000-000000000001");
property1.setName("Default passkey profile");
property1.setPasskeyTypes("deviceBound,synced");
property1.setAttestationEnforcement("disabled");
 keyRestrictions1 = new ();
keyRestrictions1.setIsEnforced(false);
keyRestrictions1.setEnforcementType("allow");
LinkedList<Object> aaGuids1 = new LinkedList<Object>();
keyRestrictions1.setAaGuids(aaGuids1);
property1.setKeyRestrictions(keyRestrictions1);
passkeyProfiles.add(property1);
additionalData1.put("passkeyProfiles", passkeyProfiles);
authenticationMethodConfiguration.setAdditionalData(additionalData1);
AuthenticationMethodConfiguration result = graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations().byAuthenticationMethodConfigurationId("{authenticationMethodConfiguration-id}").patch(authenticationMethodConfiguration);


```