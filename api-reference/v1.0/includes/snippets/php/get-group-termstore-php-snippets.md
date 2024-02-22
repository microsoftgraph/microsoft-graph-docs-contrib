---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupItemRequestBuilderGetRequestConfiguration();
$queryParameters = GroupItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["*","parentSiteId"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->byGroupId('group-id')->get($requestConfiguration)->wait();

```