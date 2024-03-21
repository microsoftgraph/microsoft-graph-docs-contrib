---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RootRequestBuilderGetRequestConfiguration();
$queryParameters = RootRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["children(\$select=id,name)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->root()->get($requestConfiguration)->wait();

```