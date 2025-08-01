---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\DataSecurityAndGovernance\SensitivityLabels\Item\Rights\RightsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RightsRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
		'Client-Request-Id' => '7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a',
	];
$requestConfiguration->headers = $headers;

$queryParameters = RightsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->ownerEmail = "bob@contoso.com";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->dataSecurityAndGovernance()->sensitivityLabels()->bySensitivityLabelId('sensitivityLabel-id')->rights()->get($requestConfiguration)->wait();

```