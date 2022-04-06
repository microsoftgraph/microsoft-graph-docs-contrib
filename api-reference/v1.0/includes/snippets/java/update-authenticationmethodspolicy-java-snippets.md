---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodsPolicy authenticationMethodsPolicy = new AuthenticationMethodsPolicy();
authenticationMethodsPolicy.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy"));
RegistrationEnforcement registrationEnforcement = new RegistrationEnforcement();
AuthenticationMethodsRegistrationCampaign authenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign();
authenticationMethodsRegistrationCampaign.snoozeDurationInDays = 1;
authenticationMethodsRegistrationCampaign.state = AdvancedConfigState.ENABLED;
LinkedList<ExcludeTarget> excludeTargetsList = new LinkedList<ExcludeTarget>();
authenticationMethodsRegistrationCampaign.excludeTargets = excludeTargetsList;
LinkedList<AuthenticationMethodsRegistrationCampaignIncludeTarget> includeTargetsList = new LinkedList<AuthenticationMethodsRegistrationCampaignIncludeTarget>();
AuthenticationMethodsRegistrationCampaignIncludeTarget includeTargets = new AuthenticationMethodsRegistrationCampaignIncludeTarget();
includeTargets.id = "3ee3a9de-0a86-4e12-a287-9769accf1ba2";
includeTargets.targetType = AuthenticationMethodTargetType.GROUP;
includeTargets.targetedAuthenticationMethod = "microsoftAuthenticator";
includeTargetsList.add(includeTargets);
authenticationMethodsRegistrationCampaign.includeTargets = includeTargetsList;
registrationEnforcement.authenticationMethodsRegistrationCampaign = authenticationMethodsRegistrationCampaign;
authenticationMethodsPolicy.registrationEnforcement = registrationEnforcement;
LinkedList<AuthenticationMethodConfiguration> authenticationMethodConfigurationsList = new LinkedList<AuthenticationMethodConfiguration>();
Fido2AuthenticationMethodConfiguration authenticationMethodConfigurations = new Fido2AuthenticationMethodConfiguration();
authenticationMethodConfigurations.id = "Fido2";
authenticationMethodConfigurations.state = AuthenticationMethodState.DISABLED;
authenticationMethodConfigurations.isSelfServiceRegistrationAllowed = false;
authenticationMethodConfigurations.isAttestationEnforced = false;
Fido2KeyRestrictions keyRestrictions = new Fido2KeyRestrictions();
keyRestrictions.isEnforced = false;
keyRestrictions.enforcementType = Fido2RestrictionEnforcementType.BLOCK;
LinkedList<String> aaGuidsList = new LinkedList<String>();
keyRestrictions.aaGuids = aaGuidsList;
authenticationMethodConfigurations.keyRestrictions = keyRestrictions;
authenticationMethodConfigurationsList.add(authenticationMethodConfigurations);
AuthenticationMethodConfigurationCollectionResponse authenticationMethodConfigurationCollectionResponse = new AuthenticationMethodConfigurationCollectionResponse();
authenticationMethodConfigurationCollectionResponse.value = authenticationMethodConfigurationsList;
AuthenticationMethodConfigurationCollectionPage authenticationMethodConfigurationCollectionPage = new AuthenticationMethodConfigurationCollectionPage(authenticationMethodConfigurationCollectionResponse, null);
authenticationMethodsPolicy.authenticationMethodConfigurations = authenticationMethodConfigurationCollectionPage;

graphClient.policies().authenticationMethodsPolicy()
	.buildRequest()
	.patch(authenticationMethodsPolicy);

```