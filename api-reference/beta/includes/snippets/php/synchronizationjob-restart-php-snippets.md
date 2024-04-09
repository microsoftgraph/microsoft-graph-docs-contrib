---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\ServicePrincipals\Item\Synchronization\Jobs\Item\Restart\RestartRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\RestartPostRequestBody;
use Microsoft\Graph\Generated\Models\SynchronizationJobRestartCriteria;


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


$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->bySynchronizationJobId('synchronizationJob-id')->restart()->post($requestBody, $requestConfiguration)->wait();

```