---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Security\AutoAuditingConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AutoAuditingConfiguration();
$requestBody->setOdataType('#microsoft.graph.security.autoAuditingConfiguration');
$requestBody->setIsAutomatic(true);

$result = $graphServiceClient->security()->identities()->settings()->autoAuditingConfiguration()->patch($requestBody)->wait();

```