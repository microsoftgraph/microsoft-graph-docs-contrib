---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('7679d9a4-2323-44cd-b5c2-673ec88d8b12');

$requestBody->setResourceId('076e8b57-bac8-49d7-9396-e3449b685055');

$requestBody->setAppRoleId('00000000-0000-0000-0000-000000000000');



$result = $graphServiceClient->groups()->byGroupId('group-id')->appRoleAssignments()->post($requestBody);


```