---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\IncidentCase;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\IncidentClassification;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\IncidentDetermination;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\IncidentSeverity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IncidentCase();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.incidentCase');
$requestBody->setDisplayName('Incident Case MS-002');
$requestBody->setStatus('InProgress');
$requestBody->setClassification(new IncidentClassification('truePositive'));
$requestBody->setDetermination(new IncidentDetermination('phishing'));
$requestBody->setSeverity(new IncidentSeverity('high'));

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->patch($requestBody)->wait();

```