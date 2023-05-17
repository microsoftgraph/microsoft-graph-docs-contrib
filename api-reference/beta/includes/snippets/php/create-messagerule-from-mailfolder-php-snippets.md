---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MessageRule();
$requestBody->setDisplayName('From partner');

$requestBody->setSequence(2);

$requestBody->setIsEnabled(true);

$conditions = new MessageRulePredicates();
$conditions->setSenderContains(['adele', ]);


$requestBody->setConditions($conditions);
$actions = new MessageRuleActions();
$forwardToRecipient1 = new Recipient();
$forwardToRecipient1EmailAddress = new EmailAddress();
$forwardToRecipient1EmailAddress->setName('Alex Wilbur');

$forwardToRecipient1EmailAddress->setAddress('AlexW@contoso.onmicrosoft.com');


$forwardToRecipient1->setEmailAddress($forwardToRecipient1EmailAddress);

$forwardToArray []= $forwardToRecipient1;
$actions->setForwardTo($forwardToArray);


$actions->setStopProcessingRules(true);


$requestBody->setActions($actions);


$result = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->messageRules()->post($requestBody);


```