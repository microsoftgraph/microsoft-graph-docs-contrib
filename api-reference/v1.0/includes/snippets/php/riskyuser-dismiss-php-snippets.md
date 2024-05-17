---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DismissPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setUserIds(['04487ee0-f4f6-4e7f-8999-facc5a30e232', '13387ee0-f4f6-4e7f-8999-facc5120e345', 	]);

$graphServiceClient->identityProtection()->riskyUsers()->dismiss()->post($requestBody)->wait();

```