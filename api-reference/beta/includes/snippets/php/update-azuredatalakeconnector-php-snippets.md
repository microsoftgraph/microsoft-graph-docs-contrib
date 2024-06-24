---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AzureDataLakeConnector;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AzureDataLakeConnector();
$requestBody->setOdataType('microsoft.graph.industryData.azureDataLakeConnector');
$requestBody->setDisplayName('CSV files from SIS');

$result = $graphServiceClient->external()->industryData()->dataConnectors()->byIndustryDataConnectorId('industryDataConnector-id')->patch($requestBody)->wait();

```