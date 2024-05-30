---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ItemPhone;
use Microsoft\Graph\Beta\Generated\Models\PhoneType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPhone();
$requestBody->setType(new PhoneType('other'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->phones()->byItemPhoneId('itemPhone-id')->patch($requestBody)->wait();

```