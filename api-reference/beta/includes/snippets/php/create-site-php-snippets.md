---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Site;
use Microsoft\Graph\Beta\Generated\Models\SiteTemplateType;
use Microsoft\Graph\Beta\Generated\Models\IdentityInput;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Site();
$requestBody->setName('Communication Site Test');
$requestBody->setWebUrl('https://contoso.sharepoint.com/sites/commsite1');
$requestBody->setLocale('en-US');
$requestBody->setShareByEmailEnabled(false);
$requestBody->setDescription('Test Site Description');
$requestBody->setTemplate(new SiteTemplateType('sitepagepublishing'));
$ownerIdentityToResolve = new IdentityInput();
$ownerIdentityToResolve->setEmail('ryan@contoso.com');
$requestBody->setOwnerIdentityToResolve($ownerIdentityToResolve);

$result = $graphServiceClient->sites()->post($requestBody)->wait();

```