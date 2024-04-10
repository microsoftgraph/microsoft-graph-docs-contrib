---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Application;
use Microsoft\Graph\Generated\Models\WebApplication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setIdentifierUris(['https://contosoiwaapp-contoso.msappproxy.net', 	]);
$web = new WebApplication();
$web->setRedirectUris(['https://contosoiwaapp-contoso.msappproxy.net', 	]);
$web->setHomePageUrl('https://contosoiwaapp-contoso.msappproxy.net');
$requestBody->setWeb($web);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```