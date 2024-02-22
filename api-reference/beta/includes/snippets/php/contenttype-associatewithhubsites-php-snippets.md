---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssociateWithHubSitesPostRequestBody();
$requestBody->setHubSiteUrls(['https://graph.microsoft.com/beta/sites/id', 	]);
$requestBody->setPropagateToExistingLists(false);

$graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->associateWithHubSites()->post($requestBody)->wait();

```