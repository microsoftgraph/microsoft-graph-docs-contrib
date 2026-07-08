---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DistributionList;
use Microsoft\Graph\Beta\Generated\Models\Member;
use Microsoft\Graph\Beta\Generated\Models\RecipientType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DistributionList();
$requestBody->setDisplayName('Project Team');
$membersMember1 = new Member();
$membersMember1->setDisplayName('Adele Vance');
$membersMember1->setRecipientType(new RecipientType('mailbox'));
$additionalData = [
	'emailAddress' => 'AdeleV@contoso.com',
];
$membersMember1->setAdditionalData($additionalData);
$membersArray []= $membersMember1;
$membersMember2 = new Member();
$membersMember2->setDisplayName('Alex Wilber');
$membersMember2->setRecipientType(new RecipientType('mailbox'));
$additionalData = [
	'emailAddress' => 'AlexW@contoso.com',
];
$membersMember2->setAdditionalData($additionalData);
$membersArray []= $membersMember2;
$requestBody->setMembers($membersArray);


$result = $graphServiceClient->me()->distributionLists()->post($requestBody)->wait();

```