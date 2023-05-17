---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LanguageProficiency();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));



$result = $graphServiceClient->me()->profile()->languagesById('languageProficiency-id')->patch($requestBody);


```