---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->cloudPCs()->byCloudPCId('cloudPC-id')->getFrontlineCloudPcAccessState()->get()->wait();

```