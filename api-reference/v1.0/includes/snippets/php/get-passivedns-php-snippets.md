---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatIntelligence()->passiveDnsRecords()->byPassiveDnsRecordId('passiveDnsRecord-id')->get()->wait();

```