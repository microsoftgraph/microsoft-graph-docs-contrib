---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\User;
use Microsoft\Graph\Beta\Generated\Models\AuthorizationInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setBusinessPhones(['+1 425 555 0109', 	]);
$requestBody->setOfficeLocation('18/2111');
$authorizationInfo = new AuthorizationInfo();
$authorizationInfo->setCertificateUserIds(['5432109876543210@mil', 	]);
$requestBody->setAuthorizationInfo($authorizationInfo);

$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody)->wait();

```