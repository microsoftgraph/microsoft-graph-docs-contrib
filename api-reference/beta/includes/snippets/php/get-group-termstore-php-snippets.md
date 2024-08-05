---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\TermStore\Groups\Item\GroupItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupItemRequestBuilderGetRequestConfiguration();
$queryParameters = GroupItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["*","parentSiteId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->byGroupId('group-id')->get($requestConfiguration)->wait();

```