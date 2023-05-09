---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomSecurityAttributeDefinition();
$additionalData = [
		'allowedValues@delta' => $allowedValues@delta1 = new ();
$		allowedValues@delta1->setId('Baker');

		$allowedValues@delta1->setIsActive(false);


$allowedValues@deltaArray []= $allowedValues@delta1;
$allowedValues@delta2 = new ();
$		allowedValues@delta2->setId('Skagit');

		$allowedValues@delta2->setIsActive(true);


$allowedValues@deltaArray []= $allowedValues@delta2;
$requestBody->setAllowedValues@delta($allowedValues@deltaArray);


];
$requestBody->setAdditionalData($additionalData);



$requestConfiguration = new CustomSecurityAttributeDefinitionRequestBuilderPatchRequestConfiguration();
$headers = [
	'OData-Version' => '4.01',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->directory()->customSecurityAttributeDefinitionsById('customSecurityAttributeDefinition-id')->patch($requestBody, $requestConfiguration);


```