---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamPostRequestBody();
$additionalData = [
'memberSettings' => $requestBody = new MemberSettings();
		$requestBody->setAllowCreatePrivateChannels(true);

		$requestBody->setAllowCreateUpdateChannels(true);


$requestBody->setMemberSettings($memberSettings);

'messagingSettings' => $requestBody = new MessagingSettings();
		$requestBody->setAllowUserEditMessages(true);

		$requestBody->setAllowUserDeleteMessages(true);


$requestBody->setMessagingSettings($messagingSettings);

'funSettings' => $requestBody = new FunSettings();
		$requestBody->setAllowGiphy(true);

$		requestBody->setGiphyContentRating('strict');


$requestBody->setFunSettings($funSettings);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->groupsById('group-id')->team()->put($requestBody);


```