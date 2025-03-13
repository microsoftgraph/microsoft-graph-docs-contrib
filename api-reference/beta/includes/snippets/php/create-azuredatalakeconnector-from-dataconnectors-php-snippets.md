---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AzureDataLakeConnector;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\FileFormatReferenceValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AzureDataLakeConnector();
$requestBody->setOdataType('#microsoft.graph.industryData.azureDataLakeConnector');
$requestBody->setDisplayName('CSV connector');
$fileFormat = new FileFormatReferenceValue();
$fileFormat->setOdataType('microsoft.graph.industryData.fileFormatReferenceValue');
$fileFormat->setCode('schoolDataSyncV1');
$requestBody->setFileFormat($fileFormat);
$additionalData = [
	'sourceSystem@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/sourceSystems(\'aa050107-5784-4a8e-1876-08daddab21bc\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->external()->industryData()->dataConnectors()->post($requestBody)->wait();

```