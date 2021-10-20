---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodsPolicy authenticationMethodsPolicy = new AuthenticationMethodsPolicy();
authenticationMethodsPolicy.additionalDataManager().put("@odata.context", new JsonPrimitive("https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy"));
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