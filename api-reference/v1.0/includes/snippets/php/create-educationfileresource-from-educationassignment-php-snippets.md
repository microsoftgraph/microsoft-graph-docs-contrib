---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(false);

$resource = new EducationFileResource();
$resource->setDisplayName('article.pdf');

$resource->setOdataType('#microsoft.graph.educationFileResource');

$additionalData = [
		'file' => 		[
				'odataid' => 'https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RPHKSP6THE4ORD2RQAR6MQLF26G', 
		],

];
$resource->setAdditionalData($additionalData);



$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->post($requestBody);


```