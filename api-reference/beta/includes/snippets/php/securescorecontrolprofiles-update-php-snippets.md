---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SecureScoreControlProfile();
$requestBody->setControlStateUpdates('controlStateUpdates-value');



$result = $graphServiceClient->security()->secureScoreControlProfiles()->bySecureScoreControlProfileId('secureScoreControlProfile-id')->patch($requestBody);


```