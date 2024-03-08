---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["displayName","jobTitle","mobilePhone"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->delta()->get($requestConfiguration)->wait();

```