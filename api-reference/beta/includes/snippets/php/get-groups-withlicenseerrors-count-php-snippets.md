---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Groups\GroupsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GroupsRequestBuilderGetRequestConfiguration();
$queryParameters = GroupsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "hasMembersWithLicenseErrors eq true";
$queryParameters->select = ["id","displayName"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->groups()->get($requestConfiguration)->wait();

```