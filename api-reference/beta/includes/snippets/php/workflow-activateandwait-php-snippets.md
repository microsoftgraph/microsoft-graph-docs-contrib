---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceActivateAndWait\ActivateAndWaitPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\ProvisioningObjectWorkflowSubject;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\AttributeSetEntry;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ActivateAndWaitPostRequestBody();
$subject = new ProvisioningObjectWorkflowSubject();
$subject->setOdataType('#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject');
$subject->setId('b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe');
$attributeSetEntriesAttributeSetEntry1 = new AttributeSetEntry();
$attributeSetEntriesAttributeSetEntry1->setName('department');
$attributeSetEntriesAttributeSetEntry1->setValue('Engineering');
$attributeSetEntriesArray []= $attributeSetEntriesAttributeSetEntry1;
$attributeSetEntriesAttributeSetEntry2 = new AttributeSetEntry();
$attributeSetEntriesAttributeSetEntry2->setName('jobTitle');
$attributeSetEntriesAttributeSetEntry2->setValue('Software Engineer');
$attributeSetEntriesArray []= $attributeSetEntriesAttributeSetEntry2;
$subject->setAttributeSetEntries($attributeSetEntriesArray);

$requestBody->setSubject($subject);

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceActivateAndWait()->post($requestBody)->wait();

```