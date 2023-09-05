---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setScope('User.Read.All');

$result = $graphServiceClient->oauth2PermissionGrants()->byOAuth2PermissionGrantId('oAuth2PermissionGrant-id')->patch($requestBody)->wait();

```