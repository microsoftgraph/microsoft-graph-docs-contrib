---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MessageRule;
use Microsoft\Graph\Beta\Generated\Models\MessageRulePredicates;
use Microsoft\Graph\Beta\Generated\Models\MessageRuleActions;
use Microsoft\Graph\Beta\Generated\Models\Recipient;
use Microsoft\Graph\Beta\Generated\Models\EmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MessageRule();
$requestBody->setDisplayName('From partner');
$requestBody->setSequence(2);
$requestBody->setIsEnabled(true);
$conditions = new MessageRulePredicates();
$conditions->setSenderContains(['adele', 	]);
$requestBody->setConditions($conditions);
$actions = new MessageRuleActions();
$forwardToRecipient1 = new Recipient();
$forwardToRecipient1EmailAddress = new EmailAddress();
$forwardToRecipient1EmailAddress->setName('Alex Wilbur');
$forwardToRecipient1EmailAddress->setAddress('AlexW@contoso.com');
$forwardToRecipient1->setEmailAddress($forwardToRecipient1EmailAddress);
$forwardToArray []= $forwardToRecipient1;
$actions->setForwardTo($forwardToArray);

$actions->setStopProcessingRules(true);
$requestBody->setActions($actions);

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messageRules()->post($requestBody)->wait();

```