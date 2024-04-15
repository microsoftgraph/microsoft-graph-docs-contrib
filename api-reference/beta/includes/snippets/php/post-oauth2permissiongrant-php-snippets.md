---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OAuth2PermissionGrant;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OAuth2PermissionGrant();
$requestBody->setClientId('ef969797-201d-4f6b-960c-e9ed5f31dab5');
$requestBody->setConsentType('AllPrincipals');
$requestBody->setResourceId('943603e4-e787-4fe9-93d1-e30f749aae39');
$requestBody->setScope('DelegatedPermissionGrant.ReadWrite.All');
$requestBody->setStartTime(new \DateTime('2022-03-17T00:00:00Z'));
$requestBody->setExpiryTime(new \DateTime('2023-03-17T00:00:00Z'));

$result = $graphServiceClient->oauth2PermissionGrants()->post($requestBody)->wait();

```