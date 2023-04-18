---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ResourceConnection();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.operationalInsightsConnection');

$additionalData = [
		'azureSubscriptionId' => '322ec614-e9c2-4cd5-a55c-5711fdecf02e', 
		'azureResourceGroupName' => 'target-resource-group', 
		'workspaceName' => 'my-workspace', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->admin()->windows()->updates()->resourceConnections()->post($requestBody);


```