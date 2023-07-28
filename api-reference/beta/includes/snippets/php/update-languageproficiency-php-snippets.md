---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LanguageProficiency();
$requestBody->setAllowedAudiences(new AllowedAudiences('organization'));



$result = $graphServiceClient->me()->profile()->languages()->byLanguageProficiencyId('languageProficiency-id')->patch($requestBody);


```