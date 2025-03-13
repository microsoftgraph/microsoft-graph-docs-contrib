---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Authentication\Operations\Item\LongRunningOperationItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new LongRunningOperationItemRequestBuilderGetRequestConfiguration();
$queryParameters = LongRunningOperationItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->aadgdc = "AM4P";
$queryParameters->aadgsu = "ssprprod-a";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->operations()->byLongRunningOperationId('longRunningOperation-id')->get($requestConfiguration)->wait();

```