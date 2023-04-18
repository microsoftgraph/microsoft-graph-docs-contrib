---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonCertification();
$requestBody->setIssuingAuthority('International Academy of Marketing Excellence');

$requestBody->setIssuingCompany('International Academy of Marketing Excellence');



$result = $graphServiceClient->usersById('user-id')->profile()->certificationsById('personCertification-id')->patch($requestBody);


```