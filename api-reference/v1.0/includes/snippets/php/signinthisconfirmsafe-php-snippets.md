---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\AuditLogs\SignIns\ConfirmSafe\ConfirmSafePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfirmSafePostRequestBody();
$requestBody->setRequestIds(['29f270bb-4d23-4f68-8a57-dc73dc0d4caf', '20f91ec9-d140-4d90-9cd9-f618587a1471', 	]);

$graphServiceClient->auditLogs()->signIns()->confirmSafe()->post($requestBody)->wait();

```