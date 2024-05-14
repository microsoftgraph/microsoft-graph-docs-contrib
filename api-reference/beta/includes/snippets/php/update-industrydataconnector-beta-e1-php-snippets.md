---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AzureDataLakeConnector;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AzureDataLakeConnector();
$requestBody->setOdataType('microsoft.graph.industryData.azureDataLakeConnector');
$requestBody->setDisplayName('API Monitor 60201009');

$result = $graphServiceClient->external()->industryData()->dataConnectors()->byIndustryDataConnectorId('industryDataConnector-id')->patch($requestBody)->wait();

```