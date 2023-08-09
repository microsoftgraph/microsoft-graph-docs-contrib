---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemAddress();
$requestBody->setAllowedAudiences(new AllowedAudiences('me'));

$requestBody->setDisplayName('Secret Hideout');



$result = $graphServiceClient->users()->byUserId('user-id')->profile()->addresses()->byItemAddressId('itemAddress-id')->patch($requestBody);


```