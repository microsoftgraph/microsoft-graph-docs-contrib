---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityProtection\RiskyUsers\ConfirmSafe\ConfirmSafePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfirmSafePostRequestBody();
$requestBody->setUserIds(['5a0c76d2-cb57-4ece-9bc1-c323178f116a', '96609214-09ef-4f80-9d4a-ace5fceecaec', '05020696-4eb8-45a3-918f-8f8bb7ad6015', 	]);

$graphServiceClient->identityProtection()->riskyUsers()->confirmSafe()->post($requestBody)->wait();

```