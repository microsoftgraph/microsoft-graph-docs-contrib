---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SiteSource();
$requestBody->setOdataType('microsoft.graph.ediscovery.siteSource');
$site = new Site();
$site->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');
$requestBody->setSite($site);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->sourceCollections()->bySourceCollectionId('sourceCollection-id')->additionalSources()->post($requestBody)->wait();

```