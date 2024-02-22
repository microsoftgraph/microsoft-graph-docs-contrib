---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->groups()->byExternalGroupId('externalGroup-id')->delete()->wait();

```