---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskChatMessage;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskChatMention;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskChatMentionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTaskChatMessage();
$requestBody->setContent('<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>');
$mentionsPlannerTaskChatMention1 = new PlannerTaskChatMention();
$mentionsPlannerTaskChatMention1->setMentioned('6463a5ce-2119-4198-9f2a-628761df4a62');
$mentionsPlannerTaskChatMention1->setPosition(0);
$mentionsPlannerTaskChatMention1->setMentionType(new PlannerTaskChatMentionType('user'));
$mentionsArray []= $mentionsPlannerTaskChatMention1;
$requestBody->setMentions($mentionsArray);


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->messages()->post($requestBody)->wait();

```