---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\SponsorOf\SponsorOfRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SponsorOfRequestBuilderGetRequestConfiguration();
$headers = [
		'ConsistencyLevel' => 'eventual',
	];
$requestConfiguration->headers = $headers;

$queryParameters = SponsorOfRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "microsoft.graph.user/userType eq 'Guest'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->sponsorOf()->get($requestConfiguration)->wait();

```