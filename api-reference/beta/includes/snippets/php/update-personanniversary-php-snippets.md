---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnualEvent();
$requestBody->setAllowedAudiences(new AllowedAudiences('contacts'));



$result = $graphServiceClient->me()->profile()->anniversaries()->byPersonAnnualEventId('personAnnualEvent-id')->patch($requestBody);


```