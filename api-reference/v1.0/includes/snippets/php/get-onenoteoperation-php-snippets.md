---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->onenote()->operations()->byOnenoteOperationId('onenoteOperation-id')->get()->wait();

```