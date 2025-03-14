---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AadUserConversationMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AadUserConversationMember();
$requestBody->setOdataType('#microsoft.graph.aadUserConversationMember');
$requestBody->setRoles(['owner', 	]);

$result = $graphServiceClient->teams()->byTeamId('team-id')->members()->byConversationMemberId('conversationMember-id')->patch($requestBody)->wait();

```