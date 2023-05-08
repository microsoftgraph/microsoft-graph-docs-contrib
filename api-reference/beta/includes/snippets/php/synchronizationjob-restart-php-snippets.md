---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RestartPostRequestBody();
$criteria = new SynchronizationJobRestartCriteria();
$criteria->setResetScope(new SynchronizationJobRestartScope('watermark, escrows, quarantinestate'));


$requestBody->setCriteria($criteria);

$requestConfiguration = new RestartRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <token>',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->jobsById('synchronizationJob-id')->restart()->post($requestBody, $requestConfiguration);


```