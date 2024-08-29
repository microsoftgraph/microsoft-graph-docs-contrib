---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Rosters\Item\AssignSensitivityLabel\AssignSensitivityLabelRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Planner\Rosters\Item\AssignSensitivityLabel\AssignSensitivityLabelPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\SensitivityLabelAssignmentMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignSensitivityLabelPostRequestBody();
$requestBody->setAssignmentMethod(new SensitivityLabelAssignmentMethod('standard'));
$requestBody->setSensitivityLabelId('7a4d7cc1-f72b-46a3-9831-02680eaf56f9');
$requestConfiguration = new AssignSensitivityLabelRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\""',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->rosters()->byPlannerRosterId('plannerRoster-id')->assignSensitivityLabel()->post($requestBody, $requestConfiguration)->wait();

```