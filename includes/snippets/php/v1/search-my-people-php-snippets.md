---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PeopleRequestBuilderGetRequestConfiguration();
$queryParameters = PeopleRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "\"Irene McGowen\"";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->people()->get($requestConfiguration)->wait();

```