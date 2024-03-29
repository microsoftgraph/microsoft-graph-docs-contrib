---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->apiConnectors()->byIdentityApiConnectorId('identityApiConnector-id')->delete()->wait();

```