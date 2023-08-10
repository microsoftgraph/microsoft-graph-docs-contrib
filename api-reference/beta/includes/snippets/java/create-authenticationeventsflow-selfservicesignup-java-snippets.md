---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
authenticationEventsFlow.displayName = "Woodgrove Drive User Flow";
OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp onAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp();
LinkedList<IdentityProviderBase> identityProvidersList = new LinkedList<IdentityProviderBase>();
IdentityProviderBase identityProviders = new IdentityProviderBase();
identityProviders.id = "EmailPassword-OAUTH";
identityProvidersList.add(identityProviders);
IdentityProviderBaseCollectionResponse identityProviderBaseCollectionResponse = new IdentityProviderBaseCollectionResponse();
identityProviderBaseCollectionResponse.value = identityProvidersList;
IdentityProviderBaseCollectionPage identityProviderBaseCollectionPage = new IdentityProviderBaseCollectionPage(identityProviderBaseCollectionResponse, null);
onAuthenticationMethodLoadStart.identityProviders = identityProviderBaseCollectionPage;
authenticationEventsFlow.onAuthenticationMethodLoadStart = onAuthenticationMethodLoadStart;
OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp onInteractiveAuthFlowStart = new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp();
onInteractiveAuthFlowStart.isSignUpAllowed = true;
authenticationEventsFlow.onInteractiveAuthFlowStart = onInteractiveAuthFlowStart;
OnAttributeCollectionExternalUsersSelfServiceSignUp onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
LinkedList<IdentityUserFlowAttribute> attributesList = new LinkedList<IdentityUserFlowAttribute>();
IdentityUserFlowAttribute attributes = new IdentityUserFlowAttribute();
attributes.id = "email";
attributes.displayName = "Email Address";
attributes.description = "Email address of the user";
attributes.userFlowAttributeType = IdentityUserFlowAttributeType.BUILT_IN;
attributes.dataType = IdentityUserFlowAttributeDataType.STRING;
attributesList.add(attributes);
IdentityUserFlowAttribute attributes1 = new IdentityUserFlowAttribute();
attributes1.id = "displayName";
attributes1.displayName = "Display Name";
attributes1.description = "Display Name of the User.";
attributes1.userFlowAttributeType = IdentityUserFlowAttributeType.BUILT_IN;
attributes1.dataType = IdentityUserFlowAttributeDataType.STRING;
attributesList.add(attributes1);
IdentityUserFlowAttributeCollectionResponse identityUserFlowAttributeCollectionResponse = new IdentityUserFlowAttributeCollectionResponse();
identityUserFlowAttributeCollectionResponse.value = attributesList;
IdentityUserFlowAttributeCollectionPage identityUserFlowAttributeCollectionPage = new IdentityUserFlowAttributeCollectionPage(identityUserFlowAttributeCollectionResponse, null);
onAttributeCollection.attributes = identityUserFlowAttributeCollectionPage;
AuthenticationAttributeCollectionPage attributeCollectionPage = new AuthenticationAttributeCollectionPage();
LinkedList<AuthenticationAttributeCollectionPageViewConfiguration> viewsList = new LinkedList<AuthenticationAttributeCollectionPageViewConfiguration>();
AuthenticationAttributeCollectionPageViewConfiguration views = new AuthenticationAttributeCollectionPageViewConfiguration();
LinkedList<AuthenticationAttributeCollectionInputConfiguration> inputsList = new LinkedList<AuthenticationAttributeCollectionInputConfiguration>();
AuthenticationAttributeCollectionInputConfiguration inputs = new AuthenticationAttributeCollectionInputConfiguration();
inputs.attribute = "email";
inputs.label = "Email Address";
inputs.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs.hidden = true;
inputs.editable = false;
inputs.writeToDirectory = true;
inputs.required = true;
inputs.validationRegEx = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$";
inputsList.add(inputs);
AuthenticationAttributeCollectionInputConfiguration inputs1 = new AuthenticationAttributeCollectionInputConfiguration();
inputs1.attribute = "displayName";
inputs1.label = "Display Name";
inputs1.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs1.hidden = false;
inputs1.editable = true;
inputs1.writeToDirectory = true;
inputs1.required = false;
inputs1.validationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$";
inputsList.add(inputs1);
views.inputs = inputsList;
viewsList.add(views);
attributeCollectionPage.views = viewsList;
onAttributeCollection.attributeCollectionPage = attributeCollectionPage;
authenticationEventsFlow.onAttributeCollection = onAttributeCollection;

graphClient.identity().authenticationEventsFlows()
	.buildRequest()
	.post(authenticationEventsFlow);

```