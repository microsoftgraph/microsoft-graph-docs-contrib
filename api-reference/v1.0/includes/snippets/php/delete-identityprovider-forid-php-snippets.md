---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->delete()->wait();

```