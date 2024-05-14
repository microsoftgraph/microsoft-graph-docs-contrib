---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\UsageRights\UsageRightsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsageRightsRequestBuilderGetRequestConfiguration();
$queryParameters = UsageRightsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->usageRights()->get($requestConfiguration)->wait();

```