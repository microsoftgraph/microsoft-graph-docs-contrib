---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ForwardingProfile;
use Microsoft\Graph\Generated\Models\Association;
use Microsoft\Graph\Generated\Models\AssociatedBranch;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingProfile();
$associationsAssociation1 = new AssociatedBranch();
$associationsAssociation1->setOdataType('#microsoft.graph.networkaccess.associatedBranch');
$associationsAssociation1->setBranchId('88e5a488-92c3-45d6-ba56-e5cfa63677e8');
$associationsArray []= $associationsAssociation1;
$requestBody->setAssociations($associationsArray);


$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->patch($requestBody)->wait();

```