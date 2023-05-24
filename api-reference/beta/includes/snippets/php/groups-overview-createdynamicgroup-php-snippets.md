---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Marketing department folks');

$requestBody->setDisplayName('Marketing department');

$requestBody->setGroupTypes(['Unified', 'DynamicMembership', ]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('marketing');

$requestBody->setSecurityEnabled(false);

$requestBody->setMembershipRule('user.department -eq \"Marketing\"');

$requestBody->setMembershipRuleProcessingState('on');



$result = $graphServiceClient->groups()->post($requestBody);


```