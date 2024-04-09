---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\EmployeeExperience\Goals\ExportJobs\ExportJobsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ExportJobsRequestBuilderGetRequestConfiguration();
$queryParameters = ExportJobsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->employeeExperience()->goals()->exportJobs()->get($requestConfiguration)->wait();

```