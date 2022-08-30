---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonCertification();
$requestBody->setIssuingAuthority('International Academy of Marketing Excellence');
$requestBody->setIssuingCompany('International Academy of Marketing Excellence');

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->certifications()->byPersonCertificationId('personCertification-id')->patch($requestBody)->wait();

```