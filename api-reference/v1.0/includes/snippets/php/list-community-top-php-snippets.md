---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\EmployeeExperience\Communities\CommunitiesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CommunitiesRequestBuilderGetRequestConfiguration();
$queryParameters = CommunitiesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 2;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->employeeExperience()->communities()->get($requestConfiguration)->wait();

```