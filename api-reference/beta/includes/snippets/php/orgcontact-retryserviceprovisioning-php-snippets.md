---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->contacts()->byOrgContactId('orgContact-id')->retryServiceProvisioning()->post()->wait();

```