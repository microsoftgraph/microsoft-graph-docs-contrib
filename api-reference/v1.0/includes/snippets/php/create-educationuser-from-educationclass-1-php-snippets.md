---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/education/users/13015');

$graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->members()->ref()->post($requestBody)->wait();

```