---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\Partner\Security\PartnerSecurityAlert
use Microsoft\Graph\Beta\Generated\Models\Partner\Security\Status;
use Microsoft\Graph\Beta\Generated\Models\Partner\Security\ResolvedReason;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PartnerSecurityAlert();
$requestBody->setStatus(new SecurityAlertStatus('resolved'));
$requestBody->setResolvedReason(new SecurityAlertResolvedReason('fraud'));

$result = $graphServiceClient->security()->partner()->securityAlerts()->byPartnerSecurityAlertId('partnerSecurityAlert-id')->patch($requestBody)->wait();

```