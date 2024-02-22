---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->get()->wait();

```