---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CallRecordItemRequestBuilderGetRequestConfiguration();
$queryParameters = CallRecordItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["sessions(\$expand=segments)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->communications()->callRecords()->byCallRecordId('callRecord-id')->get($requestConfiguration)->wait();

```