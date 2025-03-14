---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\ClassGroupProvisioningFlow;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\ClassGroupConfiguration;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AdditionalClassGroupAttributes;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AdditionalClassGroupOptions;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\EnrollmentMappings;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\SectionRoleReferenceValue;


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