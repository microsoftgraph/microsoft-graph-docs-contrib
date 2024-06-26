---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\UsersRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsersRequestBuilderGetRequestConfiguration();
$queryParameters = UsersRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["ext55gb1l09_msLearnCourses"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->get($requestConfiguration)->wait();

```