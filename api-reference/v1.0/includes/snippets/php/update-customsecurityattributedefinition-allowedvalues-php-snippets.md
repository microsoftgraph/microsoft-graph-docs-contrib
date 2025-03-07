---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Directory\CustomSecurityAttributeDefinitions\Item\CustomSecurityAttributeDefinitionItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\CustomSecurityAttributeDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CustomSecurityAttributeDefinition();
$additionalData = [
	'allowedValues@delta' => [
			[
				'id' => 'Baker',
				'isActive' => false,
			],
			[
				'id' => 'Skagit',
				'isActive' => true,
			],
		],
];
$requestBody->setAdditionalData($additionalData);
$requestConfiguration = new CustomSecurityAttributeDefinitionItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'OData-Version' => '4.01',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->byCustomSecurityAttributeDefinitionId('customSecurityAttributeDefinition-id')->patch($requestBody, $requestConfiguration)->wait();

```