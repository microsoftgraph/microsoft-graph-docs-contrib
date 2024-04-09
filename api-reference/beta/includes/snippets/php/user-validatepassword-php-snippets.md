---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ValidatePasswordPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePasswordPostRequestBody();
$requestBody->setPassword('1234567890');

$result = $graphServiceClient->users()->validatePassword()->post($requestBody)->wait();

```