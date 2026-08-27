---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\DistributionLists\Item\AddMembers\AddMembersPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Member;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddMembersPostRequestBody();
$membersMember1 = new Member();
$membersMember1->setDisplayName('Megan Bowen');
$membersMember1->setKey('MeganB@contoso.com');
$additionalData = [
	'type' => 'mailbox',
];
$membersMember1->setAdditionalData($additionalData);
$membersArray []= $membersMember1;
$requestBody->setMembers($membersArray);


$result = $graphServiceClient->me()->distributionLists()->byDistributionListId('distributionList-id')->addMembers()->post($requestBody)->wait();

```