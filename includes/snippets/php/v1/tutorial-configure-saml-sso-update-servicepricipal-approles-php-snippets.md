---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$appRolesAppRole1 = new AppRole();
$appRolesAppRole1->setAllowedMemberTypes(['User', 	]);

$appRolesAppRole1->setDisplayName('User');

$appRolesAppRole1->setId('8774f594-1d59-4279-b9d9-59ef09a23530');

$appRolesAppRole1->setIsEnabled(true);

$appRolesAppRole1->setDescription('User');

$appRolesAppRole1->setValue(null);

$appRolesAppRole1->setOrigin('Application');


$appRolesArray []= $appRolesAppRole1;
$appRolesAppRole2 = new AppRole();
$appRolesAppRole2->setAllowedMemberTypes(['User', 	]);

$appRolesAppRole2->setDisplayName('msiam_access');

$appRolesAppRole2->setId('e7f1a7f3-9eda-48e0-9963-bd67bf531afd');

$appRolesAppRole2->setIsEnabled(true);

$appRolesAppRole2->setDescription('msiam_access');

$appRolesAppRole2->setValue(null);

$appRolesAppRole2->setOrigin('Application');


$appRolesArray []= $appRolesAppRole2;
$appRolesAppRole3 = new AppRole();
$appRolesAppRole3->setAllowedMemberTypes(['User', 	]);

$appRolesAppRole3->setDescription('Admin,WAAD');

$appRolesAppRole3->setDisplayName('Admin,WAAD');

$appRolesAppRole3->setId('3a84e31e-bffa-470f-b9e6-754a61e4dc63');

$appRolesAppRole3->setIsEnabled(true);

$appRolesAppRole3->setValue('arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD');


$appRolesArray []= $appRolesAppRole3;
$appRolesAppRole4 = new AppRole();
$appRolesAppRole4->setAllowedMemberTypes(['User', 	]);

$appRolesAppRole4->setDescription('Finance,WAAD');

$appRolesAppRole4->setDisplayName('Finance,WAAD');

$appRolesAppRole4->setId('7a960000-ded3-455b-8c04-4f2ace00319b');

$appRolesAppRole4->setIsEnabled(true);

$appRolesAppRole4->setValue('arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD');


$appRolesArray []= $appRolesAppRole4;
$requestBody->setAppRoles($appRolesArray);




$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody);


```