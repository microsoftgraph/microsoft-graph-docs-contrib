---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClockInPostRequestBody();
$notes = new ItemBody();
$notes->setContentType(new BodyType('text'));

$notes->setContent('clock in notes');


$requestBody->setNotes($notes);
$additionalData = [
		'atAprovedLocation' => true,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->clockIn()->post($requestBody);


```