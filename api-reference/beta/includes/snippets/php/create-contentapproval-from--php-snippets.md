---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContentApproval();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.contentApproval');

$content = new CatalogContent();
$content->setOdataType('#microsoft.graph.windowsUpdates.catalogContent');

$contentCatalogEntry = new FeatureUpdateCatalogEntry();
$contentCatalogEntry->setOdataType('#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry');

$contentCatalogEntry->setId('6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4');


$content->setCatalogEntry($contentCatalogEntry);

$requestBody->setContent($content);
$deploymentSettings = new DeploymentSettings();

$requestBody->setDeploymentSettings($deploymentSettings);
$additionalData = [
		'schedule' => 		[
				'startDateTime' => 'String (timestamp)', 
				'gradualRollout' => 				[
						'@odata.type' => '#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings', 
						'endDateTime' => 'String (timestamp)', 
				],

		],

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->complianceChanges()->post($requestBody);


```