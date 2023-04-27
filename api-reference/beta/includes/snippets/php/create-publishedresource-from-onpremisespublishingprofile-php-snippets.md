---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PublishedResource();
$requestBody->setDisplayName('New provisioning');

$requestBody->setResourceName('domain1.contoso.com');



$result = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->publishedResources()->post($requestBody);


```