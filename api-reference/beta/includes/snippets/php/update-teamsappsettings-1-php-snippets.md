---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamsAppSettings();
$requestBody->set@odatatype('#microsoft.graph.teamsAppSettings');

$requestBody->setIsChatResourceSpecificConsentEnabled(true);



$result = $graphServiceClient->teamwork()->teamsAppSettings()->patch($requestBody);


```