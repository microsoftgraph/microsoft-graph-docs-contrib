---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ExportJobsRequestBuilderGetRequestConfiguration();
$queryParameters = ExportJobsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->employeeExperience()->goals()->exportJobs()->get($requestConfiguration)->wait();

```