---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ForwardingProfile();
$associationsAssociation1 = new AssociatedBranch();
$associationsAssociation1->set@odatatype('#microsoft.graph.networkaccess.associatedBranch');

$associationsAssociation1->setBranchId('88e5a488-92c3-45d6-ba56-e5cfa63677e8');


$associationsArray []= $associationsAssociation1;
$requestBody->setAssociations($associationsArray);




$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->patch($requestBody);


```