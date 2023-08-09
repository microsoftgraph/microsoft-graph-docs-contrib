---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedDevice();
$requestBody->setOdataType('#microsoft.graph.managedDevice');

$requestBody->setUserId('User Id value');

$requestBody->setDeviceName('Device Name value');

$requestBody->setManagedDeviceOwnerType(new ManagedDeviceOwnerType('company'));

$deviceActionResultsDeviceActionResult1 = new DeviceActionResult();
$deviceActionResultsDeviceActionResult1->setOdataType('microsoft.graph.deviceActionResult');

$deviceActionResultsDeviceActionResult1->setActionName('Action Name value');

$deviceActionResultsDeviceActionResult1->setActionState(new ActionState('pending'));

$deviceActionResultsDeviceActionResult1->setStartDateTime(new \DateTime('2016-12-31T23:58:46.7156189-08:00'));

$deviceActionResultsDeviceActionResult1->setLastUpdatedDateTime(new \DateTime('2017-01-01T00:00:56.8321556-08:00'));


$deviceActionResultsArray []= $deviceActionResultsDeviceActionResult1;
$requestBody->setDeviceActionResults($deviceActionResultsArray);


$requestBody->setEnrolledDateTime(new \DateTime('2016-12-31T23:59:43.797191-08:00'));

$requestBody->setLastSyncDateTime(new \DateTime('2017-01-01T00:02:49.3205976-08:00'));

$requestBody->setOperatingSystem('Operating System value');

$requestBody->setComplianceState(new ComplianceState('compliant'));

$requestBody->setJailBroken('Jail Broken value');

$requestBody->setManagementAgent(new ManagementAgentType('mdm'));

$requestBody->setOsVersion('Os Version value');

$requestBody->setEasActivated(true);

$requestBody->setEasDeviceId('Eas Device Id value');

$requestBody->setEasActivationDateTime(new \DateTime('2016-12-31T23:59:43.4878784-08:00'));

$requestBody->setAzureADRegistered(true);

$requestBody->setDeviceEnrollmentType(new DeviceEnrollmentType('userEnrollment'));

$requestBody->setActivationLockBypassCode('Activation Lock Bypass Code value');

$requestBody->setEmailAddress('Email Address value');

$requestBody->setAzureADDeviceId('Azure ADDevice Id value');

$requestBody->setDeviceRegistrationState(new DeviceRegistrationState('registered'));

$requestBody->setDeviceCategoryDisplayName('Device Category Display Name value');

$requestBody->setIsSupervised(true);

$requestBody->setExchangeLastSuccessfulSyncDateTime(new \DateTime('2017-01-01T00:00:45.8803083-08:00'));

$requestBody->setExchangeAccessState(new DeviceManagementExchangeAccessState('unknown'));

$requestBody->setExchangeAccessStateReason(new DeviceManagementExchangeAccessStateReason('unknown'));

$requestBody->setRemoteAssistanceSessionUrl('https://example.com/remoteAssistanceSessionUrl/');

$requestBody->setRemoteAssistanceSessionErrorDetails('Remote Assistance Session Error Details value');

$requestBody->setIsEncrypted(true);

$requestBody->setUserPrincipalName('User Principal Name value');

$requestBody->setModel('Model value');

$requestBody->setManufacturer('Manufacturer value');

$requestBody->setImei('Imei value');

$requestBody->setComplianceGracePeriodExpirationDateTime(new \DateTime('2016-12-31T23:56:44.951111-08:00'));

$requestBody->setSerialNumber('Serial Number value');

$requestBody->setPhoneNumber('Phone Number value');

$requestBody->setAndroidSecurityPatchLevel('Android Security Patch Level value');

$requestBody->setUserDisplayName('User Display Name value');

$configurationManagerClientEnabledFeatures = new ConfigurationManagerClientEnabledFeatures();
$configurationManagerClientEnabledFeatures->setOdataType('microsoft.graph.configurationManagerClientEnabledFeatures');

$configurationManagerClientEnabledFeatures->setInventory(true);

$configurationManagerClientEnabledFeatures->setModernApps(true);

$configurationManagerClientEnabledFeatures->setResourceAccess(true);

$configurationManagerClientEnabledFeatures->setDeviceConfiguration(true);

$configurationManagerClientEnabledFeatures->setCompliancePolicy(true);

$configurationManagerClientEnabledFeatures->setWindowsUpdateForBusiness(true);


$requestBody->setConfigurationManagerClientEnabledFeatures($configurationManagerClientEnabledFeatures);
$requestBody->setWiFiMacAddress('Wi Fi Mac Address value');

$deviceHealthAttestationState = new DeviceHealthAttestationState();
$deviceHealthAttestationState->setOdataType('microsoft.graph.deviceHealthAttestationState');

$deviceHealthAttestationState->setLastUpdateDateTime('Last Update Date Time value');

$deviceHealthAttestationState->setContentNamespaceUrl('https://example.com/contentNamespaceUrl/');

$deviceHealthAttestationState->setDeviceHealthAttestationStatus('Device Health Attestation Status value');

$deviceHealthAttestationState->setContentVersion('Content Version value');

$deviceHealthAttestationState->setIssuedDateTime(new \DateTime('2016-12-31T23:58:22.1231038-08:00'));

$deviceHealthAttestationState->setAttestationIdentityKey('Attestation Identity Key value');

$deviceHealthAttestationState->setResetCount(10);

$deviceHealthAttestationState->setRestartCount(12);

$deviceHealthAttestationState->setDataExcutionPolicy('Data Excution Policy value');

$deviceHealthAttestationState->setBitLockerStatus('Bit Locker Status value');

$deviceHealthAttestationState->setBootManagerVersion('Boot Manager Version value');

$deviceHealthAttestationState->setCodeIntegrityCheckVersion('Code Integrity Check Version value');

$deviceHealthAttestationState->setSecureBoot('Secure Boot value');

$deviceHealthAttestationState->setBootDebugging('Boot Debugging value');

$deviceHealthAttestationState->setOperatingSystemKernelDebugging('Operating System Kernel Debugging value');

$deviceHealthAttestationState->setCodeIntegrity('Code Integrity value');

$deviceHealthAttestationState->setTestSigning('Test Signing value');

$deviceHealthAttestationState->setSafeMode('Safe Mode value');

$deviceHealthAttestationState->setWindowsPE('Windows PE value');

$deviceHealthAttestationState->setEarlyLaunchAntiMalwareDriverProtection('Early Launch Anti Malware Driver Protection value');

$deviceHealthAttestationState->setVirtualSecureMode('Virtual Secure Mode value');

$deviceHealthAttestationState->setPcrHashAlgorithm('Pcr Hash Algorithm value');

$deviceHealthAttestationState->setBootAppSecurityVersion('Boot App Security Version value');

$deviceHealthAttestationState->setBootManagerSecurityVersion('Boot Manager Security Version value');

$deviceHealthAttestationState->setTpmVersion('Tpm Version value');

$deviceHealthAttestationState->setPcr0('Pcr0 value');

$deviceHealthAttestationState->setSecureBootConfigurationPolicyFingerPrint('Secure Boot Configuration Policy Finger Print value');

$deviceHealthAttestationState->setCodeIntegrityPolicy('Code Integrity Policy value');

$deviceHealthAttestationState->setBootRevisionListInfo('Boot Revision List Info value');

$deviceHealthAttestationState->setOperatingSystemRevListInfo('Operating System Rev List Info value');

$deviceHealthAttestationState->setHealthStatusMismatchInfo('Health Status Mismatch Info value');

$deviceHealthAttestationState->setHealthAttestationSupportedStatus('Health Attestation Supported Status value');


$requestBody->setDeviceHealthAttestationState($deviceHealthAttestationState);
$requestBody->setSubscriberCarrier('Subscriber Carrier value');

$requestBody->setMeid('Meid value');

$requestBody->setTotalStorageSpaceInBytes(8);

$requestBody->setFreeStorageSpaceInBytes(7);

$requestBody->setManagedDeviceName('Managed Device Name value');

$requestBody->setPartnerReportedThreatState(new ManagedDevicePartnerReportedHealthState('activated'));

$requestBody->setRequireUserEnrollmentApproval(true);

$requestBody->setManagementCertificateExpirationDate(new \DateTime('2016-12-31T23:57:59.9789653-08:00'));

$requestBody->setIccid('Iccid value');

$requestBody->setUdid('Udid value');

$requestBody->setNotes('Notes value');

$requestBody->setEthernetMacAddress('Ethernet Mac Address value');

$requestBody->setPhysicalMemoryInBytes(5);



$result = $graphServiceClient->deviceManagement()->managedDevices()->post($requestBody);


```