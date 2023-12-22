---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContactsRequestBuilderGetRequestConfiguration();
$queryParameters = ContactsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->contacts()->get($requestConfiguration)->wait();

```