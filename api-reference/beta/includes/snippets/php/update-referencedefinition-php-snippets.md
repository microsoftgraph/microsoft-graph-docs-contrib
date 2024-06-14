---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\ReferenceDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceDefinition();
$requestBody->setOdataType('#microsoft.graph.industryData.referenceDefinition');
$requestBody->setDisplayName('Updated Test Grade Name');

$result = $graphServiceClient->external()->industryData()->referenceDefinitions()->byReferenceDefinitionId('referenceDefinition-id')->patch($requestBody)->wait();

```