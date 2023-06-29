---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedDevice
{
	OdataType = "#microsoft.graph.managedDevice",
	UserId = "User Id value",
	DeviceName = "Device Name value",
	ManagedDeviceOwnerType = ManagedDeviceOwnerType.Company,
	DeviceActionResults = new List<DeviceActionResult>
	{
		new DeviceActionResult
		{
			OdataType = "microsoft.graph.deviceActionResult",
			ActionName = "Action Name value",
			ActionState = ActionState.Pending,
			StartDateTime = DateTimeOffset.Parse("2016-12-31T23:58:46.7156189-08:00"),
			LastUpdatedDateTime = DateTimeOffset.Parse("2017-01-01T00:00:56.8321556-08:00"),
		},
	},
	EnrolledDateTime = DateTimeOffset.Parse("2016-12-31T23:59:43.797191-08:00"),
	LastSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:02:49.3205976-08:00"),
	OperatingSystem = "Operating System value",
	ComplianceState = ComplianceState.Compliant,
	JailBroken = "Jail Broken value",
	ManagementAgent = ManagementAgentType.Mdm,
	OsVersion = "Os Version value",
	EasActivated = true,
	EasDeviceId = "Eas Device Id value",
	EasActivationDateTime = DateTimeOffset.Parse("2016-12-31T23:59:43.4878784-08:00"),
	AzureADRegistered = true,
	DeviceEnrollmentType = DeviceEnrollmentType.UserEnrollment,
	ActivationLockBypassCode = "Activation Lock Bypass Code value",
	EmailAddress = "Email Address value",
	AzureADDeviceId = "Azure ADDevice Id value",
	DeviceRegistrationState = DeviceRegistrationState.Registered,
	DeviceCategoryDisplayName = "Device Category Display Name value",
	IsSupervised = true,
	ExchangeLastSuccessfulSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:00:45.8803083-08:00"),
	ExchangeAccessState = DeviceManagementExchangeAccessState.Unknown,
	ExchangeAccessStateReason = DeviceManagementExchangeAccessStateReason.Unknown,
	RemoteAssistanceSessionUrl = "https://example.com/remoteAssistanceSessionUrl/",
	RemoteAssistanceSessionErrorDetails = "Remote Assistance Session Error Details value",
	IsEncrypted = true,
	UserPrincipalName = "User Principal Name value",
	Model = "Model value",
	Manufacturer = "Manufacturer value",
	Imei = "Imei value",
	ComplianceGracePeriodExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:56:44.951111-08:00"),
	SerialNumber = "Serial Number value",
	PhoneNumber = "Phone Number value",
	AndroidSecurityPatchLevel = "Android Security Patch Level value",
	UserDisplayName = "User Display Name value",
	ConfigurationManagerClientEnabledFeatures = new ConfigurationManagerClientEnabledFeatures
	{
		OdataType = "microsoft.graph.configurationManagerClientEnabledFeatures",
		Inventory = true,
		ModernApps = true,
		ResourceAccess = true,
		DeviceConfiguration = true,
		CompliancePolicy = true,
		WindowsUpdateForBusiness = true,
	},
	WiFiMacAddress = "Wi Fi Mac Address value",
	DeviceHealthAttestationState = new DeviceHealthAttestationState
	{
		OdataType = "microsoft.graph.deviceHealthAttestationState",
		LastUpdateDateTime = "Last Update Date Time value",
		ContentNamespaceUrl = "https://example.com/contentNamespaceUrl/",
		DeviceHealthAttestationStatus = "Device Health Attestation Status value",
		ContentVersion = "Content Version value",
		IssuedDateTime = DateTimeOffset.Parse("2016-12-31T23:58:22.1231038-08:00"),
		AttestationIdentityKey = "Attestation Identity Key value",
		ResetCount = 10L,
		RestartCount = 12L,
		DataExcutionPolicy = "Data Excution Policy value",
		BitLockerStatus = "Bit Locker Status value",
		BootManagerVersion = "Boot Manager Version value",
		CodeIntegrityCheckVersion = "Code Integrity Check Version value",
		SecureBoot = "Secure Boot value",
		BootDebugging = "Boot Debugging value",
		OperatingSystemKernelDebugging = "Operating System Kernel Debugging value",
		CodeIntegrity = "Code Integrity value",
		TestSigning = "Test Signing value",
		SafeMode = "Safe Mode value",
		WindowsPE = "Windows PE value",
		EarlyLaunchAntiMalwareDriverProtection = "Early Launch Anti Malware Driver Protection value",
		VirtualSecureMode = "Virtual Secure Mode value",
		PcrHashAlgorithm = "Pcr Hash Algorithm value",
		BootAppSecurityVersion = "Boot App Security Version value",
		BootManagerSecurityVersion = "Boot Manager Security Version value",
		TpmVersion = "Tpm Version value",
		Pcr0 = "Pcr0 value",
		SecureBootConfigurationPolicyFingerPrint = "Secure Boot Configuration Policy Finger Print value",
		CodeIntegrityPolicy = "Code Integrity Policy value",
		BootRevisionListInfo = "Boot Revision List Info value",
		OperatingSystemRevListInfo = "Operating System Rev List Info value",
		HealthStatusMismatchInfo = "Health Status Mismatch Info value",
		HealthAttestationSupportedStatus = "Health Attestation Supported Status value",
	},
	SubscriberCarrier = "Subscriber Carrier value",
	Meid = "Meid value",
	TotalStorageSpaceInBytes = 8L,
	FreeStorageSpaceInBytes = 7L,
	ManagedDeviceName = "Managed Device Name value",
	PartnerReportedThreatState = ManagedDevicePartnerReportedHealthState.Activated,
	RequireUserEnrollmentApproval = true,
	ManagementCertificateExpirationDate = DateTimeOffset.Parse("2016-12-31T23:57:59.9789653-08:00"),
	Iccid = "Iccid value",
	Udid = "Udid value",
	Notes = "Notes value",
	EthernetMacAddress = "Ethernet Mac Address value",
	PhysicalMemoryInBytes = 5L,
};
var result = await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].PatchAsync(requestBody);


```