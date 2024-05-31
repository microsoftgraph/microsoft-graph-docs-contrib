---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\ChangePassword\ChangePasswordPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangePasswordPostRequestBody();
$requestBody->setCurrentPassword('xWwvJ]6NMw+bWH-d');
$requestBody->setNewPassword('0eM85N54wFxWwvJ]');

$graphServiceClient->me()->changePassword()->post($requestBody)->wait();

```