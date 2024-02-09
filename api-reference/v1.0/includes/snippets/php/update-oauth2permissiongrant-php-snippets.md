---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setScope('User.ReadBasic.All Group.ReadWrite.All');

$result = $graphServiceClient->oauth2PermissionGrants()->byOAuth2PermissionGrantId('oAuth2PermissionGrant-id')->patch($requestBody)->wait();

```