---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamPostRequestBody();
$additionalData = [
'memberSettings' => $requestBody = new ();
		$requestBody->setAllowCreateUpdateChannels(true);


$requestBody->setMemberSettings($memberSettings);

'messagingSettings' => $requestBody = new ();
		$requestBody->setAllowUserEditMessages(true);

		$requestBody->setAllowUserDeleteMessages(true);


$requestBody->setMessagingSettings($messagingSettings);

'funSettings' => $requestBody = new ();
		$requestBody->setAllowGiphy(true);

$		requestBody->setGiphyContentRating('strict');


$requestBody->setFunSettings($funSettings);

'discoverySettings' => $requestBody = new ();
		$requestBody->setShowInTeamsSearchAndSuggestions(true);


$requestBody->setDiscoverySettings($discoverySettings);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->groupsById('group-id')->team()->put($requestBody);


```