---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\ContentTypes\Item\AssociateWithHubSites\AssociateWithHubSitesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssociateWithHubSitesPostRequestBody();
$requestBody->setHubSiteUrls(['https://graph.microsoft.com/beta/sites/id', 	]);
$requestBody->setPropagateToExistingLists(false);

$graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->associateWithHubSites()->post($requestBody)->wait();

```