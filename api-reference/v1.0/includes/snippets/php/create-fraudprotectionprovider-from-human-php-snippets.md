---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\HumanSecurityFraudProtectionProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new HumanSecurityFraudProtectionProvider();
$requestBody->setOdataType('#microsoft.graph.humanSecurityFraudProtectionProvider');
$requestBody->setDisplayName('HUMAN Security Sign-Up Protection');
$requestBody->setAppId('XXyy1XXXy');
$requestBody->setServerToken('xxYYxxXXX1');

$result = $graphServiceClient->identity()->riskPrevention()->fraudProtectionProviders()->post($requestBody)->wait();

```