---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContactsRequestBuilderGetRequestConfiguration();
$queryParameters = ContactsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->contacts()->get($requestConfiguration)->wait();

```