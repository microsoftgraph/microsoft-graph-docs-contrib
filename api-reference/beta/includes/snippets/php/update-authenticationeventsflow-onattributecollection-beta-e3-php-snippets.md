---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
$onAttributeCollection->setOdataType('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');

$onAttributeCollectionAttributeCollectionPage = new AuthenticationAttributeCollectionPage();
$OnAttributeCollectionAttributeCollectionPage->setCustomStringsFileId(null);

$viewsAuthenticationAttributeCollectionPageViewConfiguration1 = new AuthenticationAttributeCollectionPageViewConfiguration();
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setTitle(null);

$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setDescription(null);

$inputsAuthenticationAttributeCollectionInputConfiguration1 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1->setAttribute('email');

$inputsAuthenticationAttributeCollectionInputConfiguration1->setLabel('Email Address');

$inputsAuthenticationAttributeCollectionInputConfiguration1->setInputType(new AuthenticationAttributeCollectionInputType('text'));

$inputsAuthenticationAttributeCollectionInputConfiguration1->setDefaultValue(null);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setHidden(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setEditable(false);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setWriteToDirectory(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setRequired(true);

$inputsAuthenticationAttributeCollectionInputConfiguration1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');

$inputsAuthenticationAttributeCollectionInputConfiguration1->setOptions([	]);


$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration1;
$inputsAuthenticationAttributeCollectionInputConfiguration2 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration2->setAttribute('displayName');

$inputsAuthenticationAttributeCollectionInputConfiguration2->setLabel('Display Name');

$inputsAuthenticationAttributeCollectionInputConfiguration2->setInputType(new AuthenticationAttributeCollectionInputType('text'));

$inputsAuthenticationAttributeCollectionInputConfiguration2->setDefaultValue(null);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setHidden(false);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setEditable(true);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setWriteToDirectory(true);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setRequired(false);

$inputsAuthenticationAttributeCollectionInputConfiguration2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');

$inputsAuthenticationAttributeCollectionInputConfiguration2->setOptions([	]);


$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration2;
$inputsAuthenticationAttributeCollectionInputConfiguration3 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration3->setAttribute('extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor');

$inputsAuthenticationAttributeCollectionInputConfiguration3->setLabel('Favorite color');

$inputsAuthenticationAttributeCollectionInputConfiguration3->setInputType(new AuthenticationAttributeCollectionInputType('text'));

$inputsAuthenticationAttributeCollectionInputConfiguration3->setDefaultValue(null);

$inputsAuthenticationAttributeCollectionInputConfiguration3->setHidden(false);

$inputsAuthenticationAttributeCollectionInputConfiguration3->setEditable(true);

$inputsAuthenticationAttributeCollectionInputConfiguration3->setWriteToDirectory(true);

$inputsAuthenticationAttributeCollectionInputConfiguration3->setRequired(false);

$inputsAuthenticationAttributeCollectionInputConfiguration3->setValidationRegEx('^.*');

$inputsAuthenticationAttributeCollectionInputConfiguration3->setOptions([	]);


$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration3;
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setInputs($inputsArray);



$viewsArray []= $viewsAuthenticationAttributeCollectionPageViewConfiguration1;
$onAttributeCollectionAttributeCollectionPage->setViews($viewsArray);



$onAttributeCollection->setAttributeCollectionPage($onAttributeCollectionAttributeCollectionPage);

$requestBody->setOnAttributeCollection($onAttributeCollection);


$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody);


```