---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MutePostRequestBody();
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');



$result = $graphServiceClient->communications()->callsById('call-id')->participantsById('participant-id')->mute()->post($requestBody);


```