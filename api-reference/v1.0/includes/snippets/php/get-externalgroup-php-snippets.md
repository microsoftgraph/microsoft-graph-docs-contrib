---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->byExternalGroupId('externalGroup-id')->get()->wait();

```