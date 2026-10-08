---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\IdentityAnalytics\Groups\GroupsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();
$queryParameters = GroupsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isValidGroup eq true and guestTransitiveUserCount gt 0";
$queryParameters->select = ["id","displayName","createdDateTime","groupType","transitiveUserCount","guestTransitiveUserCount"];
$queryParameters->orderby = ["createdDateTime desc"];
$queryParameters->top = 10;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->identityAnalytics()->groups()->get($requestConfiguration)->wait();

```