---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$policyViolation = new ChatMessagePolicyViolation();
$policyViolationPolicyTip = new ChatMessagePolicyViolationPolicyTip();
$policyViolationPolicyTip->setGeneralText('This item has been blocked by the administrator.');

$policyViolationPolicyTip->setComplianceUrl('https://contoso.com/dlp-policy-page');

$policyViolationPolicyTip->setMatchedConditionDescriptions(['Credit Card Number', ]);


$policyViolation->setPolicyTip($policyViolationPolicyTip);
$policyViolation->setVerdictDetails(new ChatMessagePolicyViolationVerdictDetailsTypes('allowoverridewithoutjustification,allowfalsepositiveoverride'));

$policyViolation->setDlpAction(new ChatMessagePolicyViolationDlpActionTypes('blockaccess'));


$requestBody->setPolicyViolation($policyViolation);


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->patch($requestBody);


```