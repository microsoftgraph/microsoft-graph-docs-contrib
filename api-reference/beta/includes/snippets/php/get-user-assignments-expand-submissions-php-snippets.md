---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["submissions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->education()->users()->byEducationUserId('educationUser-id')->assignments()->get($requestConfiguration)->wait();

```