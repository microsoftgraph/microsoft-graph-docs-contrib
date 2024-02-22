---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MessageRule();
$requestBody->setDisplayName('Important from partner');
$actions = new MessageRuleActions();
$actions->setMarkImportance(new Importance('high'));
$requestBody->setActions($actions);

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messageRules()->byMessageRuleId('messageRule-id')->patch($requestBody)->wait();

```