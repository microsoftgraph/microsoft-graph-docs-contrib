---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\ServicePrincipals\Item\Synchronization\Jobs\JobsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new JobsRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {Token}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->get($requestConfiguration)->wait();

```