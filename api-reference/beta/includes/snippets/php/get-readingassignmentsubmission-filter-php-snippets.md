---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Education\Reports\ReadingAssignmentSubmissions\ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration();
$queryParameters = ReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "submitDateTime gt 2023-10-10T00:00:00.000Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->reports()->readingAssignmentSubmissions()->get($requestConfiguration)->wait();

```