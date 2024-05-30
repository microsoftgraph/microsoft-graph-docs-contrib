---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Marketing department folks');
$requestBody->setDisplayName('Marketing department');
$requestBody->setGroupTypes(['Unified', 'DynamicMembership', 	]);
$requestBody->setMailEnabled(true);
$requestBody->setMailNickname('marketing');
$requestBody->setSecurityEnabled(false);
$requestBody->setMembershipRule('user.department -eq \"Marketing\"');
$requestBody->setMembershipRuleProcessingState('on');

$result = $graphServiceClient->groups()->post($requestBody)->wait();

```