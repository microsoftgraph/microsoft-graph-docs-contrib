---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->applications()->byApplicationId('application-id')->federatedIdentityCredentials()->byFederatedIdentityCredentialId('federatedIdentityCredential-id')->delete()->wait();

```