---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(false);

$resource = new EducationTeamsAppResource();
$resource->setDisplayName('Template - My Story');

$resource->setAppId('6fbeb90c-3d55-4bd5-82c4-bfe824be4300');

$resource->setAppIconWebUrl('https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2');

$resource->setTeamsEmbeddedContentUrl('https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1');

$resource->setWebUrl('https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08');

$resource->setOdataType('#microsoft.graph.educationTeamsAppResource');


$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->post($requestBody);


```