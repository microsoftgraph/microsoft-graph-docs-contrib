---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceUpdate();
$requestBody->setOdataId('https://graph.microsoft.com/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}');



$graphServiceClient->applications()->byApplicationId('application-id')->connectorGroup()->ref()->put($requestBody);


```