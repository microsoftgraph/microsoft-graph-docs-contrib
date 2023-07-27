---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestartPostRequestBody();
$criteria = new SynchronizationJobRestartCriteria();
$criteria->setResetScope(new SynchronizationJobRestartScope('watermark, Escrows, QuarantineState'));


$requestBody->setCriteria($criteria);

$requestConfiguration = new RestartRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <token>',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->bySynchronizationJobId('synchronizationJob-id')->restart()->post($requestBody, $requestConfiguration);


```