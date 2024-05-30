---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->remoteAssistancePartners()->byRemoteAssistancePartnerId('remoteAssistancePartner-id')->disconnect()->post()->wait();

```