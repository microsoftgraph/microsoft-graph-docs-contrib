---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationUser();
$requestBody->setDisplayName('Rogelio Cazares');
$requestBody->setGivenName('Rogelio');
$requestBody->setMiddleName('Fernando');
$requestBody->setSurname('Cazares');

$result = $graphServiceClient->education()->users()->byEducationUserId('educationUser-id')->patch($requestBody)->wait();

```