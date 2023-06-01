---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationEventsFlow();
$requestBody->set@odatatype('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');

$additionalData = [
		'onAttributeCollection' => $requestBody = new OnAttributeCollection();
$		requestBody->set@odatatype('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');

$attributeCollectionPage = new AttributeCollectionPage();
		$AttributeCollectionPage->setCustomStringsFileId(null);

$views1 = new ();
		$views1->setTitle(null);

		$views1->setDescription(null);

$inputs1 = new ();
$		inputs1->setAttribute('email');

$		inputs1->setLabel('Email Address');

$		inputs1->setInputType('text');

		$inputs1->setDefaultValue(null);

		$inputs1->setHidden(true);

		$inputs1->setEditable(false);

		$inputs1->setWriteToDirectory(true);

		$inputs1->setRequired(true);

$		inputs1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');

$inputs1->setOptions([]);


$inputsArray []= $inputs1;
$inputs2 = new ();
$	inputs2->setAttribute('displayName');

$	inputs2->setLabel('Display Name');

$	inputs2->setInputType('text');

	$inputs2->setDefaultValue(null);

	$inputs2->setHidden(false);

	$inputs2->setEditable(true);

	$inputs2->setWriteToDirectory(true);

	$inputs2->setRequired(false);

$	inputs2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');

$inputs2->setOptions([]);


$inputsArray []= $inputs2;
$inputs3 = new ();
$inputs3->setAttribute('extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor');

$inputs3->setLabel('Favorite color');

$inputs3->setInputType('text');

$inputs3->setDefaultValue(null);

$inputs3->setHidden(false);

$inputs3->setEditable(true);

$inputs3->setWriteToDirectory(true);

$inputs3->setRequired(false);

$inputs3->setValidationRegEx('^.*');

$inputs3->setOptions([]);


$inputsArray []= $inputs3;
$views1->setInputs($inputsArray);



$viewsArray []= $views1;
$attributeCollectionPage->setViews($viewsArray);



$requestBody->setAttributeCollectionPage($attributeCollectionPage);

$requestBody->setOnAttributeCollection($onAttributeCollection);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody);


```