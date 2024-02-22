---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->get()->wait();

```