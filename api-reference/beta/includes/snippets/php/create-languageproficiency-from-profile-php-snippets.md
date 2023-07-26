---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LanguageProficiency();
$requestBody->setDisplayName('Norwegian Bokmål');

$requestBody->setTag('nb-NO');

$requestBody->setSpoken(new LanguageProficiencyLevel('nativeOrBilingual'));

$requestBody->setWritten(new LanguageProficiencyLevel('nativeOrBilingual'));

$requestBody->setReading(new LanguageProficiencyLevel('nativeOrBilingual'));



$result = $graphServiceClient->me()->profile()->languages()->post($requestBody);


```