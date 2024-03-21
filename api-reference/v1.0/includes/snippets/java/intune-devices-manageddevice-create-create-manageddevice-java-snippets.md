---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedDevice managedDevice = new ManagedDevice();
managedDevice.setOdataType("#microsoft.graph.managedDevice");
managedDevice.setUserId("User Id value");
managedDevice.setDeviceName("Device Name value");
managedDevice.setManagedDeviceOwnerType(ManagedDeviceOwnerType.Company);
LinkedList<DeviceActionResult> deviceActionResults = new LinkedList<DeviceActionResult>();
DeviceActionResult deviceActionResult = new DeviceActionResult();
deviceActionResult.setOdataType("microsoft.graph.deviceActionResult");
deviceActionResult.setActionName("Action Name value");
deviceActionResult.setActionState(ActionState.Pending);
OffsetDateTime startDateTime = OffsetDateTime.parse("2016-12-31T23:58:46.7156189-08:00");
deviceActionResult.setStartDateTime(startDateTime);
OffsetDateTime lastUpdatedDateTime = OffsetDateTime.parse("2017-01-01T00:00:56.8321556-08:00");
deviceActionResult.setLastUpdatedDateTime(lastUpdatedDateTime);
deviceActionResults.add(deviceActionResult);
managedDevice.setDeviceActionResults(deviceActionResults);
OffsetDateTime enrolledDateTime = OffsetDateTime.parse("2016-12-31T23:59:43.797191-08:00");
managedDevice.setEnrolledDateTime(enrolledDateTime);
OffsetDateTime lastSyncDateTime = OffsetDateTime.parse("2017-01-01T00:02:49.3205976-08:00");
managedDevice.setLastSyncDateTime(lastSyncDateTime);
managedDevice.setOperatingSystem("Operating System value");
managedDevice.setComplianceState(ComplianceState.Compliant);
managedDevice.setJailBroken("Jail Broken value");
managedDevice.setManagementAgent(ManagementAgentType.Mdm);
managedDevice.setOsVersion("Os Version value");
managedDevice.setEasActivated(true);
managedDevice.setEasDeviceId("Eas Device Id value");
OffsetDateTime easActivationDateTime = OffsetDateTime.parse("2016-12-31T23:59:43.4878784-08:00");
managedDevice.setEasActivationDateTime(easActivationDateTime);
managedDevice.setAzureADRegistered(true);
managedDevice.setDeviceEnrollmentType(DeviceEnrollmentType.UserEnrollment);
managedDevice.setActivationLockBypassCode("Activation Lock Bypass Code value");
managedDevice.setEmailAddress("Email Address value");
managedDevice.setAzureADDeviceId("Azure ADDevice Id value");
managedDevice.setDeviceRegistrationState(DeviceRegistrationState.Registered);
managedDevice.setDeviceCategoryDisplayName("Device Category Display Name value");
managedDevice.setIsSupervised(true);
OffsetDateTime exchangeLastSuccessfulSyncDateTime = OffsetDateTime.parse("2017-01-01T00:00:45.8803083-08:00");
managedDevice.setExchangeLastSuccessfulSyncDateTime(exchangeLastSuccessfulSyncDateTime);
managedDevice.setExchangeAccessState(DeviceManagementExchangeAccessState.Unknown);
managedDevice.setExchangeAccessStateReason(DeviceManagementExchangeAccessStateReason.Unknown);
managedDevice.setRemoteAssistanceSessionUrl("https://example.com/remoteAssistanceSessionUrl/");
managedDevice.setRemoteAssistanceSessionErrorDetails("Remote Assistance Session Error Details value");
managedDevice.setIsEncrypted(true);
managedDevice.setUserPrincipalName("User Principal Name value");
managedDevice.setModel("Model value");
managedDevice.setManufacturer("Manufacturer value");
managedDevice.setImei("Imei value");
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
managedDevice.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
managedDevice.setSerialNumber("Serial Number value");
managedDevice.setPhoneNumber("Phone Number value");
managedDevice.setAndroidSecurityPatchLevel("Android Security Patch Level value");
managedDevice.setUserDisplayName("User Display Name value");
ConfigurationManagerClientEnabledFeatures configurationManagerClientEnabledFeatures = new ConfigurationManagerClientEnabledFeatures();
configurationManagerClientEnabledFeatures.setOdataType("microsoft.graph.configurationManagerClientEnabledFeatures");
configurationManagerClientEnabledFeatures.setInventory(true);
configurationManagerClientEnabledFeatures.setModernApps(true);
configurationManagerClientEnabledFeatures.setResourceAccess(true);
configurationManagerClientEnabledFeatures.setDeviceConfiguration(true);
configurationManagerClientEnabledFeatures.setCompliancePolicy(true);
configurationManagerClientEnabledFeatures.setWindowsUpdateForBusiness(true);
managedDevice.setConfigurationManagerClientEnabledFeatures(configurationManagerClientEnabledFeatures);
managedDevice.setWiFiMacAddress("Wi Fi Mac Address value");
DeviceHealthAttestationState deviceHealthAttestationState = new DeviceHealthAttestationState();
deviceHealthAttestationState.setOdataType("microsoft.graph.deviceHealthAttestationState");
deviceHealthAttestationState.setLastUpdateDateTime("Last Update Date Time value");
deviceHealthAttestationState.setContentNamespaceUrl("https://example.com/contentNamespaceUrl/");
deviceHealthAttestationState.setDeviceHealthAttestationStatus("Device Health Attestation Status value");
deviceHealthAttestationState.setContentVersion("Content Version value");
OffsetDateTime issuedDateTime = OffsetDateTime.parse("2016-12-31T23:58:22.1231038-08:00");
deviceHealthAttestationState.setIssuedDateTime(issuedDateTime);
deviceHealthAttestationState.setAttestationIdentityKey("Attestation Identity Key value");
deviceHealthAttestationState.setResetCount(10L);
deviceHealthAttestationState.setRestartCount(12L);
deviceHealthAttestationState.setDataExcutionPolicy("Data Excution Policy value");
deviceHealthAttestationState.setBitLockerStatus("Bit Locker Status value");
deviceHealthAttestationState.setBootManagerVersion("Boot Manager Version value");
deviceHealthAttestationState.setCodeIntegrityCheckVersion("Code Integrity Check Version value");
deviceHealthAttestationState.setSecureBoot("Secure Boot value");
deviceHealthAttestationState.setBootDebugging("Boot Debugging value");
deviceHealthAttestationState.setOperatingSystemKernelDebugging("Operating System Kernel Debugging value");
deviceHealthAttestationState.setCodeIntegrity("Code Integrity value");
deviceHealthAttestationState.setTestSigning("Test Signing value");
deviceHealthAttestationState.setSafeMode("Safe Mode value");
deviceHealthAttestationState.setWindowsPE("Windows PE value");
deviceHealthAttestationState.setEarlyLaunchAntiMalwareDriverProtection("Early Launch Anti Malware Driver Protection value");
deviceHealthAttestationState.setVirtualSecureMode("Virtual Secure Mode value");
deviceHealthAttestationState.setPcrHashAlgorithm("Pcr Hash Algorithm value");
deviceHealthAttestationState.setBootAppSecurityVersion("Boot App Security Version value");
deviceHealthAttestationState.setBootManagerSecurityVersion("Boot Manager Security Version value");
deviceHealthAttestationState.setTpmVersion("Tpm Version value");
deviceHealthAttestationState.setPcr0("Pcr0 value");
deviceHealthAttestationState.setSecureBootConfigurationPolicyFingerPrint("Secure Boot Configuration Policy Finger Print value");
deviceHealthAttestationState.setCodeIntegrityPolicy("Code Integrity Policy value");
deviceHealthAttestationState.setBootRevisionListInfo("Boot Revision List Info value");
deviceHealthAttestationState.setOperatingSystemRevListInfo("Operating System Rev List Info value");
deviceHealthAttestationState.setHealthStatusMismatchInfo("Health Status Mismatch Info value");
deviceHealthAttestationState.setHealthAttestationSupportedStatus("Health Attestation Supported Status value");
managedDevice.setDeviceHealthAttestationState(deviceHealthAttestationState);
managedDevice.setSubscriberCarrier("Subscriber Carrier value");
managedDevice.setMeid("Meid value");
managedDevice.setTotalStorageSpaceInBytes(8L);
managedDevice.setFreeStorageSpaceInBytes(7L);
managedDevice.setManagedDeviceName("Managed Device Name value");
managedDevice.setPartnerReportedThreatState(ManagedDevicePartnerReportedHealthState.Activated);
managedDevice.setRequireUserEnrollmentApproval(true);
OffsetDateTime managementCertificateExpirationDate = OffsetDateTime.parse("2016-12-31T23:57:59.9789653-08:00");
managedDevice.setManagementCertificateExpirationDate(managementCertificateExpirationDate);
managedDevice.setIccid("Iccid value");
managedDevice.setUdid("Udid value");
managedDevice.setNotes("Notes value");
managedDevice.setEthernetMacAddress("Ethernet Mac Address value");
managedDevice.setPhysicalMemoryInBytes(5L);
ManagedDevice result = graphClient.deviceManagement().managedDevices().post(managedDevice);


```