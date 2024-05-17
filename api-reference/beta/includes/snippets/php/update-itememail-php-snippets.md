---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemEmail;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemEmail();
$requestBody->setDisplayName('Business Email');
$requestBody->setType(new EmailType('work'));

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->emails()->byItemEmailId('itemEmail-id')->patch($requestBody)->wait();

```