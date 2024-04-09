---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MessageRule;
use Microsoft\Graph\Generated\Models\MessageRuleActions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MessageRule();
$requestBody->setDisplayName('Important from partner');
$actions = new MessageRuleActions();
$actions->setMarkImportance(new Importance('high'));
$requestBody->setActions($actions);

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messageRules()->byMessageRuleId('messageRule-id')->patch($requestBody)->wait();

```