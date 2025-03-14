---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\RestorePoints\RestorePointsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RestorePointsRequestBuilderGetRequestConfiguration();
$queryParameters = RestorePointsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["protectionUnit(\$filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')"];
$queryParameters->filter = "protectionDateTime lt 2024-05-12T10:01:00Z";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->backupRestore()->restorePoints()->get($requestConfiguration)->wait();

```