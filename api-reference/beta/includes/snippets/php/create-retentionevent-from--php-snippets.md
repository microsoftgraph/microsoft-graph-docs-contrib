---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\RetentionEvent;
use Microsoft\Graph\Beta\Generated\Models\Security\EventQuery;
use Microsoft\Graph\Beta\Generated\Models\IdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Security\EventPropagationResult;
use Microsoft\Graph\Beta\Generated\Models\Security\RetentionEventStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionEvent();
$requestBody->setOdataType('#microsoft.graph.security.retentionEvent');
$requestBody->setDisplayName('String');
$requestBody->setDescription('String');
$eventQueriesEventQuery1 = new EventQuery();
$eventQueriesEventQuery1->setOdataType('microsoft.graph.security.eventQuery');
$eventQueriesArray []= $eventQueriesEventQuery1;
$requestBody->setEventQueries($eventQueriesArray);

$requestBody->setEventTriggerDateTime(new \DateTime('String (timestamp)'));
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');
$requestBody->setCreatedBy($createdBy);
$eventPropagationResultsEventPropagationResult1 = new EventPropagationResult();
$eventPropagationResultsEventPropagationResult1->setOdataType('microsoft.graph.security.eventPropagationResult');
$eventPropagationResultsArray []= $eventPropagationResultsEventPropagationResult1;
$requestBody->setEventPropagationResults($eventPropagationResultsArray);

$eventStatus = new RetentionEventStatus();
$eventStatus->setOdataType('microsoft.graph.security.retentionEventStatus');
$requestBody->setEventStatus($eventStatus);
$requestBody->setLastStatusUpdateDateTime(new \DateTime('String (timestamp)'));

$result = $graphServiceClient->security()->triggers()->retentionEvents()->post($requestBody)->wait();

```