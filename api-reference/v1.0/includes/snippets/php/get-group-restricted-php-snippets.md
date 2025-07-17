---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Groups\Item\GroupItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupItemRequestBuilderGetRequestConfiguration();
$queryParameters = GroupItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["isManagementRestricted"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->byGroupId('group-id')->get($requestConfiguration)->wait();

```