---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["createdDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->me()->assignments()->get($requestConfiguration)->wait();

```