---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\PasswordCredential;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setDisplayName('MyAppName');
$passwordCredentialsPasswordCredential1 = new PasswordCredential();
$passwordCredentialsPasswordCredential1->setDisplayName('Password name');
$passwordCredentialsArray []= $passwordCredentialsPasswordCredential1;
$requestBody->setPasswordCredentials($passwordCredentialsArray);


$result = $graphServiceClient->applications()->post($requestBody)->wait();

```