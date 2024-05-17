---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ResetPasswordPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResetPasswordPostRequestBody();

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->methods()->byAuthenticationMethodId('authenticationMethod-id')->resetPassword()->post($requestBody)->wait();

```