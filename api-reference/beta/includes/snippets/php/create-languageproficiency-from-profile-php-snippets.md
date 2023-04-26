---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LanguageProficiency();
$requestBody->setDisplayName('Norwegian Bokmål');

$requestBody->setTag('nb-NO');

$requestBody->setSpoken(new LanguageProficiencyLevel('nativeorbilingual'));

$requestBody->setWritten(new LanguageProficiencyLevel('nativeorbilingual'));

$requestBody->setReading(new LanguageProficiencyLevel('nativeorbilingual'));



$result = $graphServiceClient->me()->profile()->languages()->post($requestBody);


```