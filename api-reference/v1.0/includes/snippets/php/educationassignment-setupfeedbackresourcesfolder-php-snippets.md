---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Education\Classes\Item\Assignments\Item\SetUpFeedbackResourcesFolder\SetUpFeedbackResourcesFolderPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetUpFeedbackResourcesFolderPostRequestBody();

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->setUpFeedbackResourcesFolder()->post($requestBody)->wait();

```