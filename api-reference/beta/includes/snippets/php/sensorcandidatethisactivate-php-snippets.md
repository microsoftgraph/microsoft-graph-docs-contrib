---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Identities\SensorCandidates\MicrosoftGraphSecurityActivate\ActivatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivatePostRequestBody();
$requestBody->setServerIds(['c0633ebb-8cfb-f17a-0b9e-83aa661f53a3', 	]);

$graphServiceClient->security()->identities()->sensorCandidates()->microsoftGraphSecurityActivate()->post($requestBody)->wait();

```