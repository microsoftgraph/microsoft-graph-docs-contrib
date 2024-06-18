---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\OneRosterApiDataConnector;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneRosterApiDataConnector();
$requestBody->setOdataType('microsoft.graph.industryData.oneRosterApiDataConnector');
$requestBody->setDisplayName('One Roster Connector');

$result = $graphServiceClient->external()->industryData()->dataConnectors()->byIndustryDataConnectorId('industryDataConnector-id')->patch($requestBody)->wait();

```