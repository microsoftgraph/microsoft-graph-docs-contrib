---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SubjectRightsRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubjectRightsRequest();
$requestBody->setOdataType('#microsoft.graph.subjectRightsRequest');
$requestBody->setInternalDueDateTime(new \DateTime('2021-08-30T00:00:00Z'));

$result = $graphServiceClient->privacy()->subjectRightsRequests()->bySubjectRightsRequestId('subjectRightsRequest-id')->patch($requestBody)->wait();

```