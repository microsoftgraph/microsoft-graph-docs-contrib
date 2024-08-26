---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ApprovalItem;
use Microsoft\Graph\Beta\Generated\Models\ApprovalIdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;
use Microsoft\Graph\Beta\Generated\Models\ApprovalItemType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApprovalItem();
$approversApprovalIdentitySet1 = new ApprovalIdentitySet();
$approversApprovalIdentitySet1User = new Identity();
$approversApprovalIdentitySet1User->setId('39d1a7fb-5f54-4c89-b513-241683718c9b');
$approversApprovalIdentitySet1User->setDisplayName('Jana Pihlak');
$approversApprovalIdentitySet1->setUser($approversApprovalIdentitySet1User);
$approversArray []= $approversApprovalIdentitySet1;
$approversApprovalIdentitySet2 = new ApprovalIdentitySet();
$approversApprovalIdentitySet2Group = new Identity();
$approversApprovalIdentitySet2Group->setId('f2926053-5479-4bce-ad4c-8394ce51d6c5');
$approversApprovalIdentitySet2->setGroup($approversApprovalIdentitySet2Group);
$approversArray []= $approversApprovalIdentitySet2;
$requestBody->setApprovers($approversArray);

$requestBody->setDisplayName('Title of approval');
$requestBody->setDescription('Details of approval');
$requestBody->setApprovalType(new ApprovalItemType('basic'));
$requestBody->setAllowEmailNotification(true);

$result = $graphServiceClient->solutions()->approval()->approvalItems()->post($requestBody)->wait();

```