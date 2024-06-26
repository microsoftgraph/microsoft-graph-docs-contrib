---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Users\Item\Assignments\AssignmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->orderby = ["createdDateTime"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->me()->assignments()->get($requestConfiguration)->wait();

```