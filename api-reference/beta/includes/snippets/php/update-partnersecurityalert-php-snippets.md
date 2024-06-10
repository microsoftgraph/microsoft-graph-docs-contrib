---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Partner\Security\PartnerSecurityAlert;
use Microsoft\Graph\Beta\Generated\Models\Partner\Security\SecurityAlertStatus;
use Microsoft\Graph\Beta\Generated\Models\Partner\Security\SecurityAlertResolvedReason;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PartnerSecurityAlert();
$requestBody->setStatus(new SecurityAlertStatus('resolved'));
$requestBody->setResolvedReason(new SecurityAlertResolvedReason('fraud'));

$result = $graphServiceClient->security()->partner()->securityAlerts()->byPartnerSecurityAlertId('partnerSecurityAlert-id')->patch($requestBody)->wait();

```