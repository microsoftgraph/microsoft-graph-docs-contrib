---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationUser;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationUser();
$requestBody->setDisplayName('Rogelio Cazares');
$requestBody->setGivenName('Rogelio');
$requestBody->setMiddleName('Fernando');
$requestBody->setSurname('Cazares');

$result = $graphServiceClient->education()->users()->byEducationUserId('educationUser-id')->patch($requestBody)->wait();

```