---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GroupLifecyclePolicy();
$requestBody->setGroupLifetimeInDays(180);

$requestBody->setManagedGroupTypes('Selected');

$requestBody->setAlternateNotificationEmails('admin@contoso.com');



$result = $graphServiceClient->groupLifecyclePolicies()->byGroupLifecyclePolicyId('groupLifecyclePolicy-id')->patch($requestBody);


```