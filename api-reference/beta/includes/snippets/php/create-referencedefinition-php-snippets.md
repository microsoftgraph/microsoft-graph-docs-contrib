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
$requestBody->setReferenceType('RefGradeLevel');
$requestBody->setCode('TestGrade');
$requestBody->setIsDisabled(false);
$requestBody->setSortIndex(300);
$requestBody->setDisplayName('New Test Grade Level');

$result = $graphServiceClient->external()->industryData()->referenceDefinitions()->post($requestBody)->wait();

```