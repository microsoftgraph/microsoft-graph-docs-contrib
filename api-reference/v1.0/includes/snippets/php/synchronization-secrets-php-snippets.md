---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SynchronizationSecretKeyStringValuePair();
$additionalData = [
		'value' => [
				[
						'key' => 'BaseAddress', 
						'value' => 'user@domain.com', 
				],
				[
						'key' => 'SecretToken', 
						'value' => 'password-value', 
				],
				[
						'key' => 'SyncNotificationSettings', 
						'value' => '{\"Enabled\":false,\"DeleteThresholdEnabled\":false}', 
				],
				[
						'key' => 'SyncAll', 
						'value' => 'false', 
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->secrets()->put($requestBody);


```