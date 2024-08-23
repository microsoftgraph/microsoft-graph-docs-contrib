---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
authenticationEventsFlow.setOdataType("#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow");
authenticationEventsFlow.setDisplayName("Woodgrove User Flow 2");
OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp onAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp();
onAuthenticationMethodLoadStart.setOdataType("#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp");
LinkedList<IdentityProviderBase> identityProviders = new LinkedList<IdentityProviderBase>();
IdentityProviderBase identityProviderBase = new IdentityProviderBase();
identityProviderBase.setId("EmailPassword-OAUTH");
identityProviders.add(identityProviderBase);
IdentityProviderBase identityProviderBase1 = new IdentityProviderBase();
identityProviderBase1.setId("Google-OAUTH");
identityProviders.add(identityProviderBase1);
IdentityProviderBase identityProviderBase2 = new IdentityProviderBase();
identityProviderBase2.setId("Facebook-OAUTH");
identityProviders.add(identityProviderBase2);
onAuthenticationMethodLoadStart.setIdentityProviders(identityProviders);
authenticationEventsFlow.setOnAuthenticationMethodLoadStart(onAuthenticationMethodLoadStart);
OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp onInteractiveAuthFlowStart = new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp();
onInteractiveAuthFlowStart.setOdataType("#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp");
onInteractiveAuthFlowStart.setIsSignUpAllowed(true);
authenticationEventsFlow.setOnInteractiveAuthFlowStart(onInteractiveAuthFlowStart);
OnAttributeCollectionExternalUsersSelfServiceSignUp onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
onAttributeCollection.setOdataType("#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp");
LinkedList<IdentityUserFlowAttribute> attributes = new LinkedList<IdentityUserFlowAttribute>();
IdentityUserFlowAttribute identityUserFlowAttribute = new IdentityUserFlowAttribute();
identityUserFlowAttribute.setId("email");
identityUserFlowAttribute.setDisplayName("Email Address");
identityUserFlowAttribute.setDescription("Email address of the user");
identityUserFlowAttribute.setUserFlowAttributeType(IdentityUserFlowAttributeType.BuiltIn);
identityUserFlowAttribute.setDataType(IdentityUserFlowAttributeDataType.String);
attributes.add(identityUserFlowAttribute);
IdentityUserFlowAttribute identityUserFlowAttribute1 = new IdentityUserFlowAttribute();
identityUserFlowAttribute1.setId("displayName");
identityUserFlowAttribute1.setDisplayName("Display Name");
identityUserFlowAttribute1.setDescription("Display Name of the User.");
identityUserFlowAttribute1.setUserFlowAttributeType(IdentityUserFlowAttributeType.BuiltIn);
identityUserFlowAttribute1.setDataType(IdentityUserFlowAttributeDataType.String);
attributes.add(identityUserFlowAttribute1);
IdentityUserFlowAttribute identityUserFlowAttribute2 = new IdentityUserFlowAttribute();
identityUserFlowAttribute2.setId("extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor");
identityUserFlowAttribute2.setDisplayName("Favorite color");
identityUserFlowAttribute2.setDescription("what is your favorite color");
identityUserFlowAttribute2.setUserFlowAttributeType(IdentityUserFlowAttributeType.Custom);
identityUserFlowAttribute2.setDataType(IdentityUserFlowAttributeDataType.String);
attributes.add(identityUserFlowAttribute2);
onAttributeCollection.setAttributes(attributes);
AuthenticationAttributeCollectionPage attributeCollectionPage = new AuthenticationAttributeCollectionPage();
LinkedList<AuthenticationAttributeCollectionPageViewConfiguration> views = new LinkedList<AuthenticationAttributeCollectionPageViewConfiguration>();
AuthenticationAttributeCollectionPageViewConfiguration authenticationAttributeCollectionPageViewConfiguration = new AuthenticationAttributeCollectionPageViewConfiguration();
LinkedList<AuthenticationAttributeCollectionInputConfiguration> inputs = new LinkedList<AuthenticationAttributeCollectionInputConfiguration>();
AuthenticationAttributeCollectionInputConfiguration authenticationAttributeCollectionInputConfiguration = new AuthenticationAttributeCollectionInputConfiguration();
authenticationAttributeCollectionInputConfiguration.setAttribute("email");
authenticationAttributeCollectionInputConfiguration.setLabel("Email Address");
authenticationAttributeCollectionInputConfiguration.setInputType(AuthenticationAttributeCollectionInputType.Text);
authenticationAttributeCollectionInputConfiguration.setHidden(true);
authenticationAttributeCollectionInputConfiguration.setEditable(false);
authenticationAttributeCollectionInputConfiguration.setWriteToDirectory(true);
authenticationAttributeCollectionInputConfiguration.setRequired(true);
authenticationAttributeCollectionInputConfiguration.setValidationRegEx("^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$");
inputs.add(authenticationAttributeCollectionInputConfiguration);
AuthenticationAttributeCollectionInputConfiguration authenticationAttributeCollectionInputConfiguration1 = new AuthenticationAttributeCollectionInputConfiguration();
authenticationAttributeCollectionInputConfiguration1.setAttribute("displayName");
authenticationAttributeCollectionInputConfiguration1.setLabel("Display Name");
authenticationAttributeCollectionInputConfiguration1.setInputType(AuthenticationAttributeCollectionInputType.Text);
authenticationAttributeCollectionInputConfiguration1.setHidden(false);
authenticationAttributeCollectionInputConfiguration1.setEditable(true);
authenticationAttributeCollectionInputConfiguration1.setWriteToDirectory(true);
authenticationAttributeCollectionInputConfiguration1.setRequired(false);
authenticationAttributeCollectionInputConfiguration1.setValidationRegEx("^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$");
inputs.add(authenticationAttributeCollectionInputConfiguration1);
AuthenticationAttributeCollectionInputConfiguration authenticationAttributeCollectionInputConfiguration2 = new AuthenticationAttributeCollectionInputConfiguration();
authenticationAttributeCollectionInputConfiguration2.setAttribute("extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor");
authenticationAttributeCollectionInputConfiguration2.setLabel("Favorite color");
authenticationAttributeCollectionInputConfiguration2.setInputType(AuthenticationAttributeCollectionInputType.Text);
authenticationAttributeCollectionInputConfiguration2.setHidden(false);
authenticationAttributeCollectionInputConfiguration2.setEditable(true);
authenticationAttributeCollectionInputConfiguration2.setWriteToDirectory(true);
authenticationAttributeCollectionInputConfiguration2.setRequired(false);
authenticationAttributeCollectionInputConfiguration2.setValidationRegEx("^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$");
inputs.add(authenticationAttributeCollectionInputConfiguration2);
authenticationAttributeCollectionPageViewConfiguration.setInputs(inputs);
views.add(authenticationAttributeCollectionPageViewConfiguration);
attributeCollectionPage.setViews(views);
onAttributeCollection.setAttributeCollectionPage(attributeCollectionPage);
authenticationEventsFlow.setOnAttributeCollection(onAttributeCollection);
AuthenticationEventsFlow result = graphClient.identity().authenticationEventsFlows().post(authenticationEventsFlow);


```