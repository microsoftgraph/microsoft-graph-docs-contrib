---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Reports\MicrosoftAppsFileStorageContainerUsageSummary\MicrosoftAppsFileStorageContainerUsageSummaryRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftAppsFileStorageContainerUsageSummaryRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftAppsFileStorageContainerUsageSummaryRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["usageByDataLocation(\$expand=usageByApp)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->microsoftAppsFileStorageContainerUsageSummary()->get($requestConfiguration)->wait();

```