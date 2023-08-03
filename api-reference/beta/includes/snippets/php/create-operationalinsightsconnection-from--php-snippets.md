---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OperationalInsightsConnection();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.operationalInsightsConnection');

$requestBody->setAzureSubscriptionId('322ec614-e9c2-4cd5-a55c-5711fdecf02e');

$requestBody->setAzureResourceGroupName('target-resource-group');

$requestBody->setWorkspaceName('my-workspace');



$result = $graphServiceClient->admin()->windows()->updates()->resourceConnections()->post($requestBody);


```