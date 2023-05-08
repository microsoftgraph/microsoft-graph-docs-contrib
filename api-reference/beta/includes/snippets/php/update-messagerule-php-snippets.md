---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MessageRule();
$requestBody->setDisplayName('Important from partner');

$actions = new MessageRuleActions();
$actions->setMarkImportance(new Importance('high'));


$requestBody->setActions($actions);


$result = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->messageRulesById('messageRule-id')->patch($requestBody);


```