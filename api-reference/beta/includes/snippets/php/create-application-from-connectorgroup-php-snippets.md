---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceUpdate();
$requestBody->set@odataid('https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}');



$graphServiceClient->applicationsById('application-id')->connectorGroup()->ref()->put($requestBody);


```