---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssociateWithHubSitesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssociateWithHubSitesPostRequestBody();
$requestBody->setHubSiteUrls(['https://graph.microsoft.com/v1.0/sites/{site-id}', 	]);
$requestBody->setPropagateToExistingLists(false);

$graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->associateWithHubSites()->post($requestBody)->wait();

```