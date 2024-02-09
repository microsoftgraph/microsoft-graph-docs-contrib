---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/education/users/14008');

$graphServiceClient->education()->schools()->byEducationSchoolId('educationSchool-id')->users()->ref()->post($requestBody)->wait();

```