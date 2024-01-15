---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
authenticationEventsFlow.displayName = "Woodgrove User Flow 2";
OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp onAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp();
LinkedList<IdentityProviderBase> identityProvidersList = new LinkedList<IdentityProviderBase>();
IdentityProviderBase identityProviders = new IdentityProviderBase();
identityProviders.id = "EmailPassword-OAUTH";
identityProvidersList.add(identityProviders);
IdentityProviderBase identityProviders1 = new IdentityProviderBase();
identityProviders1.id = "Google-OAUTH";
identityProvidersList.add(identityProviders1);
IdentityProviderBase identityProviders2 = new IdentityProviderBase();
identityProviders2.id = "Facebook-OAUTH";
identityProvidersList.add(identityProviders2);
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
IdentityUserFlowAttribute attributes2 = new IdentityUserFlowAttribute();
attributes2.id = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor";
attributes2.displayName = "Favorite color";
attributes2.description = "what is your favorite color";
attributes2.userFlowAttributeType = IdentityUserFlowAttributeType.CUSTOM;
attributes2.dataType = IdentityUserFlowAttributeDataType.STRING;
attributesList.add(attributes2);
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
AuthenticationAttributeCollectionInputConfiguration inputs2 = new AuthenticationAttributeCollectionInputConfiguration();
inputs2.attribute = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor";
inputs2.label = "Favorite color";
inputs2.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs2.hidden = false;
inputs2.editable = true;
inputs2.writeToDirectory = true;
inputs2.required = false;
inputs2.validationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$";
inputsList.add(inputs2);
views.inputs = inputsList;
viewsList.add(views);
attributeCollectionPage.views = viewsList;
onAttributeCollection.attributeCollectionPage = attributeCollectionPage;
authenticationEventsFlow.onAttributeCollection = onAttributeCollection;

graphClient.identity().authenticationEventsFlows()
	.buildRequest()
	.post(authenticationEventsFlow);

```