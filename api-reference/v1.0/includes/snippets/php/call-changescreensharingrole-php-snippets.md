---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Communications\Calls\Item\ChangeScreenSharingRole\ChangeScreenSharingRolePostRequestBody;
use Microsoft\Graph\Generated\Models\ScreenSharingRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangeScreenSharingRolePostRequestBody();
$requestBody->setRole(new ScreenSharingRole('viewer'));

$graphServiceClient->communications()->calls()->byCallId('call-id')->changeScreenSharingRole()->post($requestBody)->wait();

```