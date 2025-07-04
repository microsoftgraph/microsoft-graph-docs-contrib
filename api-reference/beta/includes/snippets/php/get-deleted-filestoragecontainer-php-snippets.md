---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Storage\FileStorage\DeletedContainers\Item\FileStorageContainerItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FileStorageContainerItemRequestBuilderGetRequestConfiguration();
$queryParameters = FileStorageContainerItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["*","members"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->storage()->fileStorage()->deletedContainers()->byFileStorageContainerId('fileStorageContainer-id')->get($requestConfiguration)->wait();

```