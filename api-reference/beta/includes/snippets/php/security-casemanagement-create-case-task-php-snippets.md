---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\Task;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\TaskStatus;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CaseTaskPriority;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CaseTaskCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Task();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.task');
$requestBody->setDisplayName('Validate affected devices');
$requestBody->setStatus(new TaskStatus('new'));
$requestBody->setDescription('Review affected devices and collect evidence');
$requestBody->setAssignedTo('user@contoso.com');
$requestBody->setClosingNotes('Investigation completed and documented');
$requestBody->setDueDateTime(new \DateTime('2026-06-29T17:54:43Z'));
$requestBody->setPriority(new CaseTaskPriority('high'));
$requestBody->setCategory(new CaseTaskCategory('investigate'));

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->tasks()->post($requestBody)->wait();

```