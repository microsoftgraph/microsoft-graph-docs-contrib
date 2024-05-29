---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ForwardingProfile;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Association;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\AssociatedBranch;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingProfile();
$associationsAssociation1 = new AssociatedBranch();
$associationsAssociation1->setOdataType('#microsoft.graph.networkaccess.associatedBranch');
$associationsAssociation1->setBranchId('88e5a488-92c3-45d6-ba56-e5cfa63677e8');
$associationsArray []= $associationsAssociation1;
$requestBody->setAssociations($associationsArray);


$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->patch($requestBody)->wait();

```