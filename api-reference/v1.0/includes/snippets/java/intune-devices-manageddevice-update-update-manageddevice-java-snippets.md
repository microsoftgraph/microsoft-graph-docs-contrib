---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDevice managedDevice = new ManagedDevice();
managedDevice.userId = "User Id value";
managedDevice.deviceName = "Device Name value";
managedDevice.managedDeviceOwnerType = ManagedDeviceOwnerType.COMPANY;
LinkedList<DeviceActionResult> deviceActionResultsList = new LinkedList<DeviceActionResult>();
DeviceActionResult deviceActionResults = new DeviceActionResult();
deviceActionResults.actionName = "Action Name value";
deviceActionResults.actionState = ActionState.PENDING;
deviceActionResults.startDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:46.7156189+00:00");
deviceActionResults.lastUpdatedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:56.8321556+00:00");
deviceActionResultsList.add(deviceActionResults);
managedDevice.deviceActionResults = deviceActionResultsList;
managedDevice.enrolledDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:59:43.797191+00:00");
managedDevice.lastSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:49.3205976+00:00");
managedDevice.operatingSystem = "Operating System value";
managedDevice.complianceState = ComplianceState.COMPLIANT;
managedDevice.jailBroken = "Jail Broken value";
managedDevice.managementAgent = ManagementAgentType.MDM;
managedDevice.osVersion = "Os Version value";
managedDevice.easActivated = true;
managedDevice.easDeviceId = "Eas Device Id value";
managedDevice.easActivationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:59:43.4878784+00:00");
managedDevice.azureADRegistered = true;
managedDevice.deviceEnrollmentType = DeviceEnrollmentType.USER_ENROLLMENT;
managedDevice.activationLockBypassCode = "Activation Lock Bypass Code value";
managedDevice.emailAddress = "Email Address value";
managedDevice.azureADDeviceId = "Azure ADDevice Id value";
managedDevice.deviceRegistrationState = DeviceRegistrationState.REGISTERED;
managedDevice.deviceCategoryDisplayName = "Device Category Display Name value";
managedDevice.isSupervised = true;
managedDevice.exchangeLastSuccessfulSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:45.8803083+00:00");
managedDevice.exchangeAccessState = DeviceManagementExchangeAccessState.UNKNOWN;
managedDevice.exchangeAccessStateReason = DeviceManagementExchangeAccessStateReason.UNKNOWN;
managedDevice.remoteAssistanceSessionUrl = "https://example.com/remoteAssistanceSessionUrl/";
managedDevice.remoteAssistanceSessionErrorDetails = "Remote Assistance Session Error Details value";
managedDevice.isEncrypted = true;
managedDevice.userPrincipalName = "User Principal Name value";
managedDevice.model = "Model value";
managedDevice.manufacturer = "Manufacturer value";
managedDevice.imei = "Imei value";
managedDevice.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");
managedDevice.serialNumber = "Serial Number value";
managedDevice.phoneNumber = "Phone Number value";
managedDevice.androidSecurityPatchLevel = "Android Security Patch Level value";
managedDevice.userDisplayName = "User Display Name value";
ConfigurationManagerClientEnabledFeatures configurationManagerClientEnabledFeatures = new ConfigurationManagerClientEnabledFeatures();
configurationManagerClientEnabledFeatures.inventory = true;
configurationManagerClientEnabledFeatures.modernApps = true;
configurationManagerClientEnabledFeatures.resourceAccess = true;
configurationManagerClientEnabledFeatures.deviceConfiguration = true;
configurationManagerClientEnabledFeatures.compliancePolicy = true;
configurationManagerClientEnabledFeatures.windowsUpdateForBusiness = true;
managedDevice.configurationManagerClientEnabledFeatures = configurationManagerClientEnabledFeatures;
managedDevice.wiFiMacAddress = "Wi Fi Mac Address value";
DeviceHealthAttestationState deviceHealthAttestationState = new DeviceHealthAttestationState();
deviceHealthAttestationState.lastUpdateDateTime = "Last Update Date Time value";
deviceHealthAttestationState.contentNamespaceUrl = "https://example.com/contentNamespaceUrl/";
deviceHealthAttestationState.deviceHealthAttestationStatus = "Device Health Attestation Status value";
deviceHealthAttestationState.contentVersion = "Content Version value";
deviceHealthAttestationState.issuedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:22.1231038+00:00");
deviceHealthAttestationState.attestationIdentityKey = "Attestation Identity Key value";
deviceHealthAttestationState.resetCount = 10L;
deviceHealthAttestationState.restartCount = 12L;
deviceHealthAttestationState.dataExcutionPolicy = "Data Excution Policy value";
deviceHealthAttestationState.bitLockerStatus = "Bit Locker Status value";
deviceHealthAttestationState.bootManagerVersion = "Boot Manager Version value";
deviceHealthAttestationState.codeIntegrityCheckVersion = "Code Integrity Check Version value";
deviceHealthAttestationState.secureBoot = "Secure Boot value";
deviceHealthAttestationState.bootDebugging = "Boot Debugging value";
deviceHealthAttestationState.operatingSystemKernelDebugging = "Operating System Kernel Debugging value";
deviceHealthAttestationState.codeIntegrity = "Code Integrity value";
deviceHealthAttestationState.testSigning = "Test Signing value";
deviceHealthAttestationState.safeMode = "Safe Mode value";
deviceHealthAttestationState.windowsPE = "Windows PE value";
deviceHealthAttestationState.earlyLaunchAntiMalwareDriverProtection = "Early Launch Anti Malware Driver Protection value";
deviceHealthAttestationState.virtualSecureMode = "Virtual Secure Mode value";
deviceHealthAttestationState.pcrHashAlgorithm = "Pcr Hash Algorithm value";
deviceHealthAttestationState.bootAppSecurityVersion = "Boot App Security Version value";
deviceHealthAttestationState.bootManagerSecurityVersion = "Boot Manager Security Version value";
deviceHealthAttestationState.tpmVersion = "Tpm Version value";
deviceHealthAttestationState.pcr0 = "Pcr0 value";
deviceHealthAttestationState.secureBootConfigurationPolicyFingerPrint = "Secure Boot Configuration Policy Finger Print value";
deviceHealthAttestationState.codeIntegrityPolicy = "Code Integrity Policy value";
deviceHealthAttestationState.bootRevisionListInfo = "Boot Revision List Info value";
deviceHealthAttestationState.operatingSystemRevListInfo = "Operating System Rev List Info value";
deviceHealthAttestationState.healthStatusMismatchInfo = "Health Status Mismatch Info value";
deviceHealthAttestationState.healthAttestationSupportedStatus = "Health Attestation Supported Status value";
managedDevice.deviceHealthAttestationState = deviceHealthAttestationState;
managedDevice.subscriberCarrier = "Subscriber Carrier value";
managedDevice.meid = "Meid value";
managedDevice.totalStorageSpaceInBytes = 8L;
managedDevice.freeStorageSpaceInBytes = 7L;
managedDevice.managedDeviceName = "Managed Device Name value";
managedDevice.partnerReportedThreatState = ManagedDevicePartnerReportedHealthState.ACTIVATED;
managedDevice.requireUserEnrollmentApproval = true;
managedDevice.managementCertificateExpirationDate = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:59.9789653+00:00");
managedDevice.iccid = "Iccid value";
managedDevice.udid = "Udid value";
managedDevice.notes = "Notes value";
managedDevice.ethernetMacAddress = "Ethernet Mac Address value";
managedDevice.physicalMemoryInBytes = 5L;

graphClient.deviceManagement().managedDevices("{managedDeviceId}")
	.buildRequest()
	.patch(managedDevice);

```