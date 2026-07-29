---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\Comment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Comment();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.comment');
$requestBody->setMessage('This is a modified comment.');

$result = $graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->activities()->byActivityId('activity-id')->patch($requestBody)->wait();

```