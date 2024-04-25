---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EmailAuthenticationMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethod();
$requestBody->setEmailAddress('kim@contoso.com');

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->emailMethods()->byEmailAuthenticationMethodId('emailAuthenticationMethod-id')->patch($requestBody)->wait();

```