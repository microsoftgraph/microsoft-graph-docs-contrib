---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MessageRule;
use Microsoft\Graph\Beta\Generated\Models\MessageRuleActions;
use Microsoft\Graph\Beta\Generated\Models\Importance;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MessageRule();
$requestBody->setDisplayName('Important from partner');
$actions = new MessageRuleActions();
$actions->setMarkImportance(new Importance('high'));
$requestBody->setActions($actions);

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messageRules()->byMessageRuleId('messageRule-id')->patch($requestBody)->wait();

```