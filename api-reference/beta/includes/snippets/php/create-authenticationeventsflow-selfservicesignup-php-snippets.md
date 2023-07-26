---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$requestBody->setDisplayName('Woodgrove Drive User Flow');

$onAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp();
$onAuthenticationMethodLoadStart->setOdataType('#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp');

$identityProvidersIdentityProviderBase1 = new IdentityProviderBase();
$identityProvidersIdentityProviderBase1->setId('EmailPassword-OAUTH');


$identityProvidersArray []= $identityProvidersIdentityProviderBase1;
$onAuthenticationMethodLoadStart->setIdentityProviders($identityProvidersArray);



$requestBody->setOnAuthenticationMethodLoadStart($onAuthenticationMethodLoadStart);
$onInteractiveAuthFlowStart = new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp();
$onInteractiveAuthFlowStart->setOdataType('#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp');

$onInteractiveAuthFlowStart->setIsSignUpAllowed(true);


$requestBody->setOnInteractiveAuthFlowStart($onInteractiveAuthFlowStart);
$onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
$onAttributeCollection->setOdataType('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');

$attributesIdentityUserFlowAttribute1 = new IdentityUserFlowAttribute();
$attributesIdentityUserFlowAttribute1->setId('email');

$attributesIdentityUserFlowAttribute1->setDisplayName('Email Address');

$attributesIdentityUserFlowAttribute1->setDescription('Email address of the user');

$attributesIdentityUserFlowAttribute1->setUserFlowAttributeType(new IdentityUserFlowAttributeType('builtIn'));

$attributesIdentityUserFlowAttribute1->setDataType(new IdentityUserFlowAttributeDataType('string'));


$attributesArray []= $attributesIdentityUserFlowAttribute1;
$attributesIdentityUserFlowAttribute2 = new IdentityUserFlowAttribute();
$attributesIdentityUserFlowAttribute2->setId('displayName');

$attributesIdentityUserFlowAttribute2->setDisplayName('Display Name');

$attributesIdentityUserFlowAttribute2->setDescription('Display Name of the User.');

$attributesIdentityUserFlowAttribute2->setUserFlowAttributeType(new IdentityUserFlowAttributeType('builtIn'));

$attributesIdentityUserFlowAttribute2->setDataType(new IdentityUserFlowAttributeDataType('string'));


$attributesArray []= $attributesIdentityUserFlowAttribute2;
$onAttributeCollection->setAttributes($attributesArray);


$onAttributeCollectionAttributeCollectionPage = new AuthenticationAttributeCollectionPage();
$viewsAuthenticationAttributeCollectionPageViewConfiguration1 = new AuthenticationAttributeCollectionPageViewConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1->setAttribute('email');

$inputsAuthenticationAttributeCollectionInputConfiguration1->setLabel('Email Address');

$inputsAuthenticationAttributeCollectionInputConfiguration1->setInputType(new AuthenticationAttributeCollectionInputType('text'));

$inputsAuthenticationAttributeCollectionInputConfiguration1->setHidden(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setEditable(false);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setWriteToDirectory(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setRequired(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');


$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration1;
$inputsAuthenticationAttributeCollectionInputConfiguration2 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration2->setAttribute('displayName');

$inputsAuthenticationAttributeCollectionInputConfiguration2->setLabel('Display Name');

$inputsAuthenticationAttributeCollectionInputConfiguration2->setInputType(new AuthenticationAttributeCollectionInputType('text'));

$inputsAuthenticationAttributeCollectionInputConfiguration2->setHidden(false);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setEditable(true);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setWriteToDirectory(true);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setRequired(false);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');


$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration2;
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setInputs($inputsArray);



$viewsArray []= $viewsAuthenticationAttributeCollectionPageViewConfiguration1;
$onAttributeCollectionAttributeCollectionPage->setViews($viewsArray);



$onAttributeCollection->setAttributeCollectionPage($onAttributeCollectionAttributeCollectionPage);

$requestBody->setOnAttributeCollection($onAttributeCollection);


$result = $graphServiceClient->identity()->authenticationEventsFlows()->post($requestBody);


```