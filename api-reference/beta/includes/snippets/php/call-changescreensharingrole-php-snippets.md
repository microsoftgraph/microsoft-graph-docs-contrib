---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\ChangeScreenSharingRole\ChangeScreenSharingRolePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ScreenSharingRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangeScreenSharingRolePostRequestBody();
$requestBody->setRole(new ScreenSharingRole('viewer'));

$graphServiceClient->communications()->calls()->byCallId('call-id')->changeScreenSharingRole()->post($requestBody)->wait();

```