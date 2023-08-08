---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Windows10EndpointProtectionConfiguration
{
	OdataType = "#microsoft.graph.windows10EndpointProtectionConfiguration",
	Description = "Description value",
	DisplayName = "Display Name value",
	Version = 7,
	FirewallBlockStatefulFTP = true,
	FirewallIdleTimeoutForSecurityAssociationInSeconds = 2,
	FirewallPreSharedKeyEncodingMethod = FirewallPreSharedKeyEncodingMethodType.None,
	FirewallIPSecExemptionsAllowNeighborDiscovery = true,
	FirewallIPSecExemptionsAllowICMP = true,
	FirewallIPSecExemptionsAllowRouterDiscovery = true,
	FirewallIPSecExemptionsAllowDHCP = true,
	FirewallCertificateRevocationListCheckMethod = FirewallCertificateRevocationListCheckMethodType.None,
	FirewallMergeKeyingModuleSettings = true,
	FirewallPacketQueueingMethod = FirewallPacketQueueingMethodType.Disabled,
	FirewallProfileDomain = new WindowsFirewallNetworkProfile
	{
		OdataType = "microsoft.graph.windowsFirewallNetworkProfile",
		FirewallEnabled = StateManagementSetting.Blocked,
		StealthModeBlocked = true,
		IncomingTrafficBlocked = true,
		UnicastResponsesToMulticastBroadcastsBlocked = true,
		InboundNotificationsBlocked = true,
		AuthorizedApplicationRulesFromGroupPolicyMerged = true,
		GlobalPortRulesFromGroupPolicyMerged = true,
		ConnectionSecurityRulesFromGroupPolicyMerged = true,
		OutboundConnectionsBlocked = true,
		InboundConnectionsBlocked = true,
		SecuredPacketExemptionAllowed = true,
		PolicyRulesFromGroupPolicyMerged = true,
	},
	FirewallProfilePublic = new WindowsFirewallNetworkProfile
	{
		OdataType = "microsoft.graph.windowsFirewallNetworkProfile",
		FirewallEnabled = StateManagementSetting.Blocked,
		StealthModeBlocked = true,
		IncomingTrafficBlocked = true,
		UnicastResponsesToMulticastBroadcastsBlocked = true,
		InboundNotificationsBlocked = true,
		AuthorizedApplicationRulesFromGroupPolicyMerged = true,
		GlobalPortRulesFromGroupPolicyMerged = true,
		ConnectionSecurityRulesFromGroupPolicyMerged = true,
		OutboundConnectionsBlocked = true,
		InboundConnectionsBlocked = true,
		SecuredPacketExemptionAllowed = true,
		PolicyRulesFromGroupPolicyMerged = true,
	},
	FirewallProfilePrivate = new WindowsFirewallNetworkProfile
	{
		OdataType = "microsoft.graph.windowsFirewallNetworkProfile",
		FirewallEnabled = StateManagementSetting.Blocked,
		StealthModeBlocked = true,
		IncomingTrafficBlocked = true,
		UnicastResponsesToMulticastBroadcastsBlocked = true,
		InboundNotificationsBlocked = true,
		AuthorizedApplicationRulesFromGroupPolicyMerged = true,
		GlobalPortRulesFromGroupPolicyMerged = true,
		ConnectionSecurityRulesFromGroupPolicyMerged = true,
		OutboundConnectionsBlocked = true,
		InboundConnectionsBlocked = true,
		SecuredPacketExemptionAllowed = true,
		PolicyRulesFromGroupPolicyMerged = true,
	},
	DefenderAttackSurfaceReductionExcludedPaths = new List<string>
	{
		"Defender Attack Surface Reduction Excluded Paths value",
	},
	DefenderGuardedFoldersAllowedAppPaths = new List<string>
	{
		"Defender Guarded Folders Allowed App Paths value",
	},
	DefenderAdditionalGuardedFolders = new List<string>
	{
		"Defender Additional Guarded Folders value",
	},
	DefenderExploitProtectionXml = Convert.FromBase64String("ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA=="),
	DefenderExploitProtectionXmlFileName = "Defender Exploit Protection Xml File Name value",
	DefenderSecurityCenterBlockExploitProtectionOverride = true,
	AppLockerApplicationControl = AppLockerApplicationControlType.EnforceComponentsAndStoreApps,
	SmartScreenEnableInShell = true,
	SmartScreenBlockOverrideForFiles = true,
	ApplicationGuardEnabled = true,
	ApplicationGuardBlockFileTransfer = ApplicationGuardBlockFileTransferType.BlockImageAndTextFile,
	ApplicationGuardBlockNonEnterpriseContent = true,
	ApplicationGuardAllowPersistence = true,
	ApplicationGuardForceAuditing = true,
	ApplicationGuardBlockClipboardSharing = ApplicationGuardBlockClipboardSharingType.BlockBoth,
	ApplicationGuardAllowPrintToPDF = true,
	ApplicationGuardAllowPrintToXPS = true,
	ApplicationGuardAllowPrintToLocalPrinters = true,
	ApplicationGuardAllowPrintToNetworkPrinters = true,
	BitLockerDisableWarningForOtherDiskEncryption = true,
	BitLockerEnableStorageCardEncryptionOnMobile = true,
	BitLockerEncryptDevice = true,
	BitLockerRemovableDrivePolicy = new BitLockerRemovableDrivePolicy
	{
		OdataType = "microsoft.graph.bitLockerRemovableDrivePolicy",
		EncryptionMethod = BitLockerEncryptionMethod.AesCbc256,
		RequireEncryptionForWriteAccess = true,
		BlockCrossOrganizationWriteAccess = true,
	},
};
var result = await graphClient.DeviceManagement.DeviceConfigurations.PostAsync(requestBody);


```