---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationUser();
$requestBody->setDisplayName('Rogelio Cazares');
$requestBody->setGivenName('Rogelio');
$requestBody->setMiddleName('Fernando');
$requestBody->setSurname('Cazares');

$result = $graphServiceClient->education()->users()->byEducationUserId('educationUser-id')->patch($requestBody)->wait();

```