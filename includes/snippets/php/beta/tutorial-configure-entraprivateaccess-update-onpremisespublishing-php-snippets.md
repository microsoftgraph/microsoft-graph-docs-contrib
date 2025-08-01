---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\OnPremisesPublishing;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$onPremisesPublishing = new OnPremisesPublishing();
$onPremisesPublishing->setApplicationType('nonwebapp');
$onPremisesPublishing->setIsAccessibleViaZTNAClient(true);
$requestBody->setOnPremisesPublishing($onPremisesPublishing);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```