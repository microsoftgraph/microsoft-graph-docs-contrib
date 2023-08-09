---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StopHoldMusicPostRequestBody();
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');



$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->stopHoldMusic()->post($requestBody);


```