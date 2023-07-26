---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new $valuePutRequestBody();
$additionalData = [
		'LocalizedStrings' => [
				[
						'elementType' => 'UxElement', 
						'elementId' => 						null,
						'stringId' => 'alert_message', 
						'override' => true,
						'value' => 'Are you sure that you want to cancel entering your information?', 
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->languages()->byUserFlowLanguageConfigurationId('userFlowLanguageConfiguration-id')->overridesPages()->byUserFlowLanguagePageId('userFlowLanguagePage-id')->value()->put($requestBody);


```