---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailAuthenticationMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethod();
$requestBody->setEmailAddress('kim@contoso.com');

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->emailMethods()->post($requestBody)->wait();

```