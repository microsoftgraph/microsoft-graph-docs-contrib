---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Alerts_v2\MicrosoftGraphSecurityMoveAlerts\MoveAlertsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\CorrelationReason;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MoveAlertsPostRequestBody();
$requestBody->setAlertIds(['da637551227677560813_-961444813', 'da637551227677560813_-961444814', 	]);
$requestBody->setIncidentId('2972395');
$requestBody->setAlertComment('Moving alerts for investigation consolidation');
$requestBody->setNewCorrelationReasons(new CorrelationReason('sameAsset, temporalProximity'));

$result = $graphServiceClient->security()->alerts_v2()->microsoftGraphSecurityMoveAlerts()->post($requestBody)->wait();

```