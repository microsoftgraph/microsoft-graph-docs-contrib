---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\IncidentRelation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IncidentRelation();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.incidentRelation');
$requestBody->setRelatedResourceId('987654321');

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->relations()->byRelationId('relation-id')->patch($requestBody)->wait();

```