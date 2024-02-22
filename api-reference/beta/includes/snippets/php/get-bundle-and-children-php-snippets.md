---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DriveItemItemRequestBuilderGetRequestConfiguration();
$queryParameters = DriveItemItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["children"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->get($requestConfiguration)->wait();

```