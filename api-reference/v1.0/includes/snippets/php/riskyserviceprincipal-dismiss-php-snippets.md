---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DismissPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setServicePrincipalIds(['9089a539-a539-9089-39a5-899039a58990', 	]);

$graphServiceClient->identityProtection()->riskyServicePrincipals()->dismiss()->post($requestBody)->wait();

```