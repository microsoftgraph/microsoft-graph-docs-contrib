---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ClassGroupProvisioningFlow;
use Microsoft\Graph\Generated\Models\ClassGroupConfiguration;
use Microsoft\Graph\Generated\Models\AdditionalClassGroupAttributes;
use Microsoft\Graph\Generated\Models\AdditionalClassGroupOptions;
use Microsoft\Graph\Generated\Models\EnrollmentMappings;
use Microsoft\Graph\Generated\Models\SectionRoleReferenceValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClassGroupProvisioningFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.classGroupProvisioningFlow');
$configuration = new ClassGroupConfiguration();
$configuration->setOdataType('#microsoft.graph.industryData.classGroupConfiguration');
$configuration->setAdditionalAttributes([new AdditionalClassGroupAttributes('courseTitle'),new AdditionalClassGroupAttributes('courseCode'),	]);
$configurationAdditionalOptions = new AdditionalClassGroupOptions();
$configurationAdditionalOptions->setOdataType('#microsoft.graph.industryData.additionalClassGroupOptions');
$configurationAdditionalOptions->setCreateTeam(false);
$configurationAdditionalOptions->setWriteDisplayNameOnCreateOnly(false);
$configuration->setAdditionalOptions($configurationAdditionalOptions);
$configurationEnrollmentMappings = new EnrollmentMappings();
$configurationEnrollmentMappings->setOdataType('#microsoft.graph.industryData.enrollmentMappings');
$memberEnrollmentMappingsSectionRoleReferenceValue1 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue1->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue1->setCode('substitute');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue1;
$configurationEnrollmentMappings->setMemberEnrollmentMappings($memberEnrollmentMappingsArray);

$ownerEnrollmentMappingsSectionRoleReferenceValue1 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue1->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue1->setCode('teacher');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue1;
$configurationEnrollmentMappings->setOwnerEnrollmentMappings($ownerEnrollmentMappingsArray);

$configuration->setEnrollmentMappings($configurationEnrollmentMappings);
$requestBody->setConfiguration($configuration);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->byOutboundProvisioningFlowSetId('outboundProvisioningFlowSet-id')->provisioningFlows()->byProvisioningFlowId('provisioningFlow-id')->patch($requestBody)->wait();

```