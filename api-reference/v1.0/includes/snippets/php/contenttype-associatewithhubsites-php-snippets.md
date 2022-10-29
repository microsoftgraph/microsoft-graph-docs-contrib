---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AssociateWithHubSitesPostRequestBody();
$requestBody->setHubSiteUrls(['https://graph.microsoft.com/v1.0/sites/{site-id}', ]);

$requestBody->setPropagateToExistingLists(false);



$graphServiceClient->sitesById('site-id')->contentTypesById('contentType-id')->associateWithHubSites()->post($requestBody);


```