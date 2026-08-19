---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\DistributionLists\Item\DeleteMembers\DeleteMembersPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Member;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteMembersPostRequestBody();
$membersMember1 = new Member();
$membersMember1->setKey('MeganB@contoso.com');
$additionalData = [
	'type' => 'mailbox',
];
$membersMember1->setAdditionalData($additionalData);
$membersArray []= $membersMember1;
$requestBody->setMembers($membersArray);


$result = $graphServiceClient->me()->distributionLists()->byDistributionListId('distributionList-id')->deleteMembers()->post($requestBody)->wait();

```