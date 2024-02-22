---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$web = new WebApplication();
$web->setRedirectUris(['https://signin.aws.amazon.com/saml', 	]);
$requestBody->setWeb($web);
$requestBody->setIdentifierUris(['https://signin.aws.amazon.com/saml', 	]);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```