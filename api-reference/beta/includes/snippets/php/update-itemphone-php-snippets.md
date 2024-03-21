---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPhone();
$requestBody->setType(new PhoneType('other'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->phones()->byItemPhoneId('itemPhone-id')->patch($requestBody)->wait();

```