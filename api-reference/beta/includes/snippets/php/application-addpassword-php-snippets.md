---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Applications\Item\AddPassword\AddPasswordPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\PasswordCredential;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPasswordPostRequestBody();
$passwordCredential = new PasswordCredential();
$passwordCredential->setDisplayName('Password friendly name');
$requestBody->setPasswordCredential($passwordCredential);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->addPassword()->post($requestBody)->wait();

```