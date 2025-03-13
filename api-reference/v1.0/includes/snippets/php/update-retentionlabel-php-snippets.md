---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\RetentionLabel;
use Microsoft\Graph\Beta\Generated\Models\Security\RetentionDurationInDays;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionLabel();
$requestBody->setOdataType('#microsoft.graph.security.retentionLabel');
$retentionDuration = new RetentionDurationInDays();
$retentionDuration->setOdataType('microsoft.graph.security.retentionDurationInDays');
$retentionDuration->setDays(2555);
$requestBody->setRetentionDuration($retentionDuration);

$result = $graphServiceClient->security()->labels()->retentionLabels()->byRetentionLabelId('retentionLabel-id')->patch($requestBody)->wait();

```