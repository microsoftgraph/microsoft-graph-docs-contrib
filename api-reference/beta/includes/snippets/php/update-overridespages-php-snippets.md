---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\$valuePutRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new $valuePutRequestBody();
$additionalData = [
	'LocalizedStrings' => [
			[
				'elementType' => 'UxElement',
				'elementId' => null,
				'stringId' => 'alert_message',
				'override' => true,
				'value' => 'Are you sure that you want to cancel your selection?',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->languages()->byUserFlowLanguageConfigurationId('userFlowLanguageConfiguration-id')->overridesPages()->byUserFlowLanguagePageId('userFlowLanguagePage-id')->content()->put($requestBody)->wait();

```