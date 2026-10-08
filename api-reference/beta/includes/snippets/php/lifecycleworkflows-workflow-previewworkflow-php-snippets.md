---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernancePreviewWorkflow\PreviewWorkflowPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\DirectoryObject;
use Microsoft\Graph\Beta\Generated\Models\User;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PreviewWorkflowPostRequestBody();
$subjectsDirectoryObject1 = new User();
$subjectsDirectoryObject1->setOdataType('#microsoft.graph.user');
$subjectsDirectoryObject1->setId('b59552b8-fa7b-4f68-8496-0a529aace8c0');
$subjectsArray []= $subjectsDirectoryObject1;
$subjectsDirectoryObject2 = new User();
$subjectsDirectoryObject2->setOdataType('#microsoft.graph.user');
$subjectsDirectoryObject2->setId('a1b2c3d4-e5f6-7890-abcd-ef1234567890');
$subjectsArray []= $subjectsDirectoryObject2;
$requestBody->setSubjects($subjectsArray);


$graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernancePreviewWorkflow()->post($requestBody)->wait();

```