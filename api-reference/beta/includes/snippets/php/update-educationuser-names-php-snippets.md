---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationUser();
$requestBody->setDisplayName('Rogelio Cazares');

$requestBody->setGivenName('Rogelio');

$requestBody->setMiddleName('Fernando');

$requestBody->setSurname('Cazares');



$result = $graphServiceClient->education()->usersById('educationUser-id')->patch($requestBody);


```