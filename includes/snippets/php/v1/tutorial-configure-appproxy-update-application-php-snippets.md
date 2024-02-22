---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setIdentifierUris(['https://contosoiwaapp-contoso.msappproxy.net', 	]);
$web = new WebApplication();
$web->setRedirectUris(['https://contosoiwaapp-contoso.msappproxy.net', 	]);
$web->setHomePageUrl('https://contosoiwaapp-contoso.msappproxy.net');
$requestBody->setWeb($web);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```