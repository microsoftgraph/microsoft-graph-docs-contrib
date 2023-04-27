---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GovernanceRoleSetting();
$adminEligibleSettingsGovernanceRuleSetting1 = new GovernanceRuleSetting();
$adminEligibleSettingsGovernanceRuleSetting1->setRuleIdentifier('ExpirationRule');

$adminEligibleSettingsGovernanceRuleSetting1->setSetting('{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}');


$adminEligibleSettingsArray []= $adminEligibleSettingsGovernanceRuleSetting1;
$requestBody->setAdminEligibleSettings($adminEligibleSettingsArray);




$result = $graphServiceClient->privilegedAccessById('privilegedAccess-id')->roleSettingsById('governanceRoleSetting-id')->patch($requestBody);


```