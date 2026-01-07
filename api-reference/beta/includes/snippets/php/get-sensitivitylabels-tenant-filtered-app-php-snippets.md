---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\DataSecurityAndGovernance\SensitivityLabels\SensitivityLabelsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SensitivityLabelsRequestBuilderGetRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
		'Client-Request-Id' => 'a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5',
	];
$requestConfiguration->headers = $headers;

$queryParameters = SensitivityLabelsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "applicableTo has 'File' and id in ('4e4234dd-377b-42a3-935b-0e42f138fa23','b7a21bba-8197-491f-a5d6-0d0f955397ca')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->dataSecurityAndGovernance()->sensitivityLabels()->get($requestConfiguration)->wait();

```