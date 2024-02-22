---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->cloudPCs()->byCloudPCId('cloudPC-id')->troubleshoot()->post()->wait();

```