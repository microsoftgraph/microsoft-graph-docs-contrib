---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\SourceSystemDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SourceSystemDefinition();
$requestBody->setVendor('LMS Vendor');

$result = $graphServiceClient->external()->industryData()->sourceSystems()->bySourceSystemDefinitionId('sourceSystemDefinition-id')->patch($requestBody)->wait();

```