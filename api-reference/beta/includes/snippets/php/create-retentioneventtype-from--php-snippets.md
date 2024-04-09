---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RetentionEventType;
use Microsoft\Graph\Generated\Models\IdentitySet;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionEventType();
$requestBody->setOdataType('#microsoft.graph.security.retentionEventType');
$requestBody->setDisplayName('String');
$requestBody->setDescription('String');
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');
$requestBody->setCreatedBy($createdBy);

$result = $graphServiceClient->security()->triggerTypes()->retentionEventTypes()->post($requestBody)->wait();

```