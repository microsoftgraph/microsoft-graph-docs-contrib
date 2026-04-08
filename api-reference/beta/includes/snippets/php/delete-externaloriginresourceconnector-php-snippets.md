---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->externalOriginResourceConnectors()->byExternalOriginResourceConnectorId('externalOriginResourceConnector-id')->delete()->wait();

```