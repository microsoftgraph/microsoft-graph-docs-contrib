---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UserItemRequestBuilderGetRequestConfiguration();
$queryParameters = UserItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","mail","mobilePhone"];
$queryParameters->expand = ["extensions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->get($requestConfiguration)->wait();

```