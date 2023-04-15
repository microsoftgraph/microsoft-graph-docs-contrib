---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RetentionEventType();
$requestBody->set@odatatype('#microsoft.graph.security.retentionEventType');

$requestBody->setDisplayName('String');

$requestBody->setDescription('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);


$result = $graphServiceClient->security()->triggerTypes()->retentionEventTypes()->post($requestBody);


```