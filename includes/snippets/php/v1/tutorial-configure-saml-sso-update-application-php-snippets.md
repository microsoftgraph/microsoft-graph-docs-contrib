---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setIdentifierUris(['https://signin.aws.amazon.com/saml', 	]);
$web = new WebApplication();
$web->setRedirectUris(['https://signin.aws.amazon.com/saml', 	]);
$requestBody->setWeb($web);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```