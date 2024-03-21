---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->applications()->byApplicationId('application-id')->federatedIdentityCredentials()->byFederatedIdentityCredentialId('federatedIdentityCredential-id')->get()->wait();

```