---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\Relation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Relation();
$requestBody->setRelatedResourceId('987654321');
$additionalData = [
	'displayName' => 'Related incident',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->relations()->byRelationId('relation-id')->patch($requestBody)->wait();

```