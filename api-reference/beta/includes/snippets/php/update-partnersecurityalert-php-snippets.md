---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PartnerSecurityAlert;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PartnerSecurityAlert();
$requestBody->setStatus(new SecurityAlertStatus('resolved'));
$requestBody->setResolvedReason(new SecurityAlertResolvedReason('fraud'));

$result = $graphServiceClient->security()->partner()->securityAlerts()->byPartnerSecurityAlertId('partnerSecurityAlert-id')->patch($requestBody)->wait();

```