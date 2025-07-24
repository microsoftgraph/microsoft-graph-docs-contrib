---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\DataSecurityAndGovernance\SensitivityLabels\Item\SensitivityLabelItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SensitivityLabelItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
		'Client-Request-Id' => 'a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->security()->dataSecurityAndGovernance()->sensitivityLabels()->bySensitivityLabelId('sensitivityLabel-id')->get($requestConfiguration)->wait();

```