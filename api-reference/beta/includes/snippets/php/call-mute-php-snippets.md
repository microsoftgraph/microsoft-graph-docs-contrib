---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutePostRequestBody();
$requestBody->setClientContext('clientContext-value');



$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->mute()->post($requestBody);


```