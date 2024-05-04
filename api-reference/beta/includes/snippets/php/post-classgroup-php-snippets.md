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
$configuration->setAdditionalAttributes([new AdditionalClassGroupAttributes('courseTitle'),new AdditionalClassGroupAttributes('courseCode'),new AdditionalClassGroupAttributes('courseSubject'),new AdditionalClassGroupAttributes('courseGradeLevel'),new AdditionalClassGroupAttributes('courseExternalId'),new AdditionalClassGroupAttributes('academicSessionTitle'),new AdditionalClassGroupAttributes('academicSessionExternalId'),	]);
$configurationAdditionalOptions = new AdditionalClassGroupOptions();
$configurationAdditionalOptions->setOdataType('#microsoft.graph.industryData.additionalClassGroupOptions');
$configurationAdditionalOptions->setCreateTeam(true);
$configurationAdditionalOptions->setWriteDisplayNameOnCreateOnly(true);
$configuration->setAdditionalOptions($configurationAdditionalOptions);
$configurationEnrollmentMappings = new EnrollmentMappings();
$configurationEnrollmentMappings->setOdataType('#microsoft.graph.industryData.enrollmentMappings');
$ownerEnrollmentMappingsSectionRoleReferenceValue1 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue1->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue1->setCode('teacher');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue1;
$ownerEnrollmentMappingsSectionRoleReferenceValue2 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue2->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue2->setCode('proctor');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue2;
$ownerEnrollmentMappingsSectionRoleReferenceValue3 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue3->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue3->setCode('teacherAssistant');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue3;
$ownerEnrollmentMappingsSectionRoleReferenceValue4 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue4->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue4->setCode('paraProfessional');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue4;
$ownerEnrollmentMappingsSectionRoleReferenceValue5 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue5->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue5->setCode('physicalTherapist');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue5;
$ownerEnrollmentMappingsSectionRoleReferenceValue6 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue6->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue6->setCode('speechTherapist');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue6;
$ownerEnrollmentMappingsSectionRoleReferenceValue7 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue7->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue7->setCode('visionTherapist');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue7;
$ownerEnrollmentMappingsSectionRoleReferenceValue8 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue8->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue8->setCode('occupationalTherapist');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue8;
$ownerEnrollmentMappingsSectionRoleReferenceValue9 = new SectionRoleReferenceValue();
$ownerEnrollmentMappingsSectionRoleReferenceValue9->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$ownerEnrollmentMappingsSectionRoleReferenceValue9->setCode('staff');
$ownerEnrollmentMappingsArray []= $ownerEnrollmentMappingsSectionRoleReferenceValue9;
$configurationEnrollmentMappings->setOwnerEnrollmentMappings($ownerEnrollmentMappingsArray);

$memberEnrollmentMappingsSectionRoleReferenceValue1 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue1->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue1->setCode('student');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue1;
$memberEnrollmentMappingsSectionRoleReferenceValue2 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue2->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue2->setCode('substitute');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue2;
$memberEnrollmentMappingsSectionRoleReferenceValue3 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue3->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue3->setCode('aide');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue3;
$memberEnrollmentMappingsSectionRoleReferenceValue4 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue4->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue4->setCode('proctor');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue4;
$memberEnrollmentMappingsSectionRoleReferenceValue5 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue5->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue5->setCode('teacherAssistant');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue5;
$memberEnrollmentMappingsSectionRoleReferenceValue6 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue6->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue6->setCode('paraProfessional');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue6;
$memberEnrollmentMappingsSectionRoleReferenceValue7 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue7->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue7->setCode('physicalTherapist');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue7;
$memberEnrollmentMappingsSectionRoleReferenceValue8 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue8->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue8->setCode('speechTherapist');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue8;
$memberEnrollmentMappingsSectionRoleReferenceValue9 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue9->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue9->setCode('visionTherapist');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue9;
$memberEnrollmentMappingsSectionRoleReferenceValue10 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue10->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue10->setCode('occupationalTherapist');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue10;
$memberEnrollmentMappingsSectionRoleReferenceValue11 = new SectionRoleReferenceValue();
$memberEnrollmentMappingsSectionRoleReferenceValue11->setOdataType('#microsoft.graph.industryData.sectionRoleReferenceValue');
$memberEnrollmentMappingsSectionRoleReferenceValue11->setCode('staff');
$memberEnrollmentMappingsArray []= $memberEnrollmentMappingsSectionRoleReferenceValue11;
$configurationEnrollmentMappings->setMemberEnrollmentMappings($memberEnrollmentMappingsArray);

$configuration->setEnrollmentMappings($configurationEnrollmentMappings);
$requestBody->setConfiguration($configuration);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->byOutboundProvisioningFlowSetId('outboundProvisioningFlowSet-id')->provisioningFlows()->post($requestBody)->wait();

```