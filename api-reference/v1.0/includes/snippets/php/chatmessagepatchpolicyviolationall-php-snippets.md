---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChatMessage();
$policyViolation = new ChatMessagePolicyViolation();
$policyViolationPolicyTip = new ChatMessagePolicyViolationPolicyTip();
$policyViolationPolicyTip->setGeneralText('This item has been blocked by the administrator.');

$policyViolationPolicyTip->setComplianceUrl('https://contoso.com/dlp-policy-page');

$policyViolationPolicyTip->setMatchedConditionDescriptions(['Credit Card Number', 	]);


$policyViolation->setPolicyTip($policyViolationPolicyTip);
$policyViolation->setVerdictDetails(new ChatMessagePolicyViolationVerdictDetailsTypes('allowOverrideWithoutJustification,AllowFalsePositiveOverride'));

$policyViolation->setDlpAction(new ChatMessagePolicyViolationDlpActionTypes('blockAccess'));


$requestBody->setPolicyViolation($policyViolation);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->messages()->byChatMessageId('chatMessage-id')->patch($requestBody);


```