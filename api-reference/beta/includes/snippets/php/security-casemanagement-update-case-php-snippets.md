---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\GenericCase;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GenericCase();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.genericCase');
$requestBody->setDisplayName('Case MS-001');
$requestBody->setStatus('Open');
$requestBody->setDescription('Investigating potential credential compromise.');
$requestBody->setAssignedTo('john.doe@contoso.com');
$requestBody->setPriority('high');
$requestBody->setDueDateTime(new \DateTime('2026-06-29T17:54:43Z'));
$requestBody->setClosingNotes('Follow up with the account owner.');

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->patch($requestBody)->wait();

```