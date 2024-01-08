---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PeopleRequestBuilderGetRequestConfiguration();
$queryParameters = PeopleRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "\"Irene McGowen\"";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->people()->get($requestConfiguration)->wait();

```