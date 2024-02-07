---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "dueDateTime eq 2050-05-18T17:00:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->me()->assignments()->get($requestConfiguration)->wait();

```