---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationEventsFlow();
$requestBody->set@odatatype('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$requestBody->setDisplayName('Woodgrove User Flow 2');

$additionalData = [
		'onAuthenticationMethodLoadStart' => $requestBody = new OnAuthenticationMethodLoadStart();
$		requestBody->set@odatatype('#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp');

$identityProviders1 = new ();
$		identityProviders1->setId('EmailPassword-OAUTH');


$identityProvidersArray []= $identityProviders1;
$identityProviders2 = new ();
$		identityProviders2->setId('Google-OAUTH');


$identityProvidersArray []= $identityProviders2;
$identityProviders3 = new ();
$		identityProviders3->setId('Facebook-OAUTH');


$identityProvidersArray []= $identityProviders3;
$requestBody->setIdentityProviders($identityProvidersArray);



$requestBody->setOnAuthenticationMethodLoadStart($onAuthenticationMethodLoadStart);

	'onInteractiveAuthFlowStart' => $requestBody = new OnInteractiveAuthFlowStart();
$	requestBody->set@odatatype('#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp');

	$requestBody->setIsSignUpAllowed(true);


$requestBody->setOnInteractiveAuthFlowStart($onInteractiveAuthFlowStart);

	'onAttributeCollection' => $requestBody = new OnAttributeCollection();
$	requestBody->set@odatatype('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');

$attributes1 = new ();
$	attributes1->setId('email');

$	attributes1->setDisplayName('Email Address');

$	attributes1->setDescription('Email address of the user');

$	attributes1->setUserFlowAttributeType('builtIn');

$	attributes1->setDataType('string');


$attributesArray []= $attributes1;
$attributes2 = new ();
$	attributes2->setId('displayName');

$	attributes2->setDisplayName('Display Name');

$	attributes2->setDescription('Display Name of the User.');

$	attributes2->setUserFlowAttributeType('builtIn');

$	attributes2->setDataType('string');


$attributesArray []= $attributes2;
$attributes3 = new ();
$	attributes3->setId('extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor');

$	attributes3->setDisplayName('Favorite color');

$	attributes3->setDescription('what is your favorite color');

$	attributes3->setUserFlowAttributeType('custom');

$	attributes3->setDataType('string');


$attributesArray []= $attributes3;
$requestBody->setAttributes($attributesArray);


$attributeCollectionPage = new AttributeCollectionPage();
$views1 = new ();
$inputs1 = new ();
$inputs1->setAttribute('email');

$inputs1->setLabel('Email Address');

$inputs1->setInputType('Text');

$inputs1->setHidden(true);

$inputs1->setEditable(false);

$inputs1->setWriteToDirectory(true);

$inputs1->setRequired(true);

$inputs1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');


$inputsArray []= $inputs1;
$inputs2 = new ();
$inputs2->setAttribute('displayName');

$inputs2->setLabel('Display Name');

$inputs2->setInputType('text');

$inputs2->setHidden(false);

$inputs2->setEditable(true);

$inputs2->setWriteToDirectory(true);

$inputs2->setRequired(false);

$inputs2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');


$inputsArray []= $inputs2;
$inputs3 = new ();
$inputs3->setAttribute('extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor');

$inputs3->setLabel('Favorite color');

$inputs3->setInputType('text');

$inputs3->setHidden(false);

$inputs3->setEditable(true);

$inputs3->setWriteToDirectory(true);

$inputs3->setRequired(false);

$inputs3->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');


$inputsArray []= $inputs3;
$views1->setInputs($inputsArray);



$viewsArray []= $views1;
$attributeCollectionPage->setViews($viewsArray);



$requestBody->setAttributeCollectionPage($attributeCollectionPage);

$requestBody->setOnAttributeCollection($onAttributeCollection);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->authenticationEventsFlows()->post($requestBody);


```