---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows10EndpointProtectionConfiguration deviceConfiguration = new Windows10EndpointProtectionConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.firewallBlockStatefulFTP = true;
deviceConfiguration.firewallIdleTimeoutForSecurityAssociationInSeconds = 2;
deviceConfiguration.firewallPreSharedKeyEncodingMethod = FirewallPreSharedKeyEncodingMethodType.NONE;
deviceConfiguration.firewallIPSecExemptionsAllowNeighborDiscovery = true;
deviceConfiguration.firewallIPSecExemptionsAllowICMP = true;
deviceConfiguration.firewallIPSecExemptionsAllowRouterDiscovery = true;
deviceConfiguration.firewallIPSecExemptionsAllowDHCP = true;
deviceConfiguration.firewallCertificateRevocationListCheckMethod = FirewallCertificateRevocationListCheckMethodType.NONE;
deviceConfiguration.firewallMergeKeyingModuleSettings = true;
deviceConfiguration.firewallPacketQueueingMethod = FirewallPacketQueueingMethodType.DISABLED;
WindowsFirewallNetworkProfile firewallProfileDomain = new WindowsFirewallNetworkProfile();
firewallProfileDomain.firewallEnabled = StateManagementSetting.BLOCKED;
firewallProfileDomain.stealthModeBlocked = true;
firewallProfileDomain.incomingTrafficBlocked = true;
firewallProfileDomain.unicastResponsesToMulticastBroadcastsBlocked = true;
firewallProfileDomain.inboundNotificationsBlocked = true;
firewallProfileDomain.authorizedApplicationRulesFromGroupPolicyMerged = true;
firewallProfileDomain.globalPortRulesFromGroupPolicyMerged = true;
firewallProfileDomain.connectionSecurityRulesFromGroupPolicyMerged = true;
firewallProfileDomain.outboundConnectionsBlocked = true;
firewallProfileDomain.inboundConnectionsBlocked = true;
firewallProfileDomain.securedPacketExemptionAllowed = true;
firewallProfileDomain.policyRulesFromGroupPolicyMerged = true;
deviceConfiguration.firewallProfileDomain = firewallProfileDomain;
WindowsFirewallNetworkProfile firewallProfilePublic = new WindowsFirewallNetworkProfile();
firewallProfilePublic.firewallEnabled = StateManagementSetting.BLOCKED;
firewallProfilePublic.stealthModeBlocked = true;
firewallProfilePublic.incomingTrafficBlocked = true;
firewallProfilePublic.unicastResponsesToMulticastBroadcastsBlocked = true;
firewallProfilePublic.inboundNotificationsBlocked = true;
firewallProfilePublic.authorizedApplicationRulesFromGroupPolicyMerged = true;
firewallProfilePublic.globalPortRulesFromGroupPolicyMerged = true;
firewallProfilePublic.connectionSecurityRulesFromGroupPolicyMerged = true;
firewallProfilePublic.outboundConnectionsBlocked = true;
firewallProfilePublic.inboundConnectionsBlocked = true;
firewallProfilePublic.securedPacketExemptionAllowed = true;
firewallProfilePublic.policyRulesFromGroupPolicyMerged = true;
deviceConfiguration.firewallProfilePublic = firewallProfilePublic;
WindowsFirewallNetworkProfile firewallProfilePrivate = new WindowsFirewallNetworkProfile();
firewallProfilePrivate.firewallEnabled = StateManagementSetting.BLOCKED;
firewallProfilePrivate.stealthModeBlocked = true;
firewallProfilePrivate.incomingTrafficBlocked = true;
firewallProfilePrivate.unicastResponsesToMulticastBroadcastsBlocked = true;
firewallProfilePrivate.inboundNotificationsBlocked = true;
firewallProfilePrivate.authorizedApplicationRulesFromGroupPolicyMerged = true;
firewallProfilePrivate.globalPortRulesFromGroupPolicyMerged = true;
firewallProfilePrivate.connectionSecurityRulesFromGroupPolicyMerged = true;
firewallProfilePrivate.outboundConnectionsBlocked = true;
firewallProfilePrivate.inboundConnectionsBlocked = true;
firewallProfilePrivate.securedPacketExemptionAllowed = true;
firewallProfilePrivate.policyRulesFromGroupPolicyMerged = true;
deviceConfiguration.firewallProfilePrivate = firewallProfilePrivate;
LinkedList<String> defenderAttackSurfaceReductionExcludedPathsList = new LinkedList<String>();
defenderAttackSurfaceReductionExcludedPathsList.add("Defender Attack Surface Reduction Excluded Paths value");
deviceConfiguration.defenderAttackSurfaceReductionExcludedPaths = defenderAttackSurfaceReductionExcludedPathsList;
LinkedList<String> defenderGuardedFoldersAllowedAppPathsList = new LinkedList<String>();
defenderGuardedFoldersAllowedAppPathsList.add("Defender Guarded Folders Allowed App Paths value");
deviceConfiguration.defenderGuardedFoldersAllowedAppPaths = defenderGuardedFoldersAllowedAppPathsList;
LinkedList<String> defenderAdditionalGuardedFoldersList = new LinkedList<String>();
defenderAdditionalGuardedFoldersList.add("Defender Additional Guarded Folders value");
deviceConfiguration.defenderAdditionalGuardedFolders = defenderAdditionalGuardedFoldersList;
deviceConfiguration.defenderExploitProtectionXml = Base64.getDecoder().decode("ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA==");
deviceConfiguration.defenderExploitProtectionXmlFileName = "Defender Exploit Protection Xml File Name value";
deviceConfiguration.defenderSecurityCenterBlockExploitProtectionOverride = true;
deviceConfiguration.appLockerApplicationControl = AppLockerApplicationControlType.ENFORCE_COMPONENTS_AND_STORE_APPS;
deviceConfiguration.smartScreenEnableInShell = true;
deviceConfiguration.smartScreenBlockOverrideForFiles = true;
deviceConfiguration.applicationGuardEnabled = true;
deviceConfiguration.applicationGuardBlockFileTransfer = ApplicationGuardBlockFileTransferType.BLOCK_IMAGE_AND_TEXT_FILE;
deviceConfiguration.applicationGuardBlockNonEnterpriseContent = true;
deviceConfiguration.applicationGuardAllowPersistence = true;
deviceConfiguration.applicationGuardForceAuditing = true;
deviceConfiguration.applicationGuardBlockClipboardSharing = ApplicationGuardBlockClipboardSharingType.BLOCK_BOTH;
deviceConfiguration.applicationGuardAllowPrintToPDF = true;
deviceConfiguration.applicationGuardAllowPrintToXPS = true;
deviceConfiguration.applicationGuardAllowPrintToLocalPrinters = true;
deviceConfiguration.applicationGuardAllowPrintToNetworkPrinters = true;
deviceConfiguration.bitLockerDisableWarningForOtherDiskEncryption = true;
deviceConfiguration.bitLockerEnableStorageCardEncryptionOnMobile = true;
deviceConfiguration.bitLockerEncryptDevice = true;
BitLockerRemovableDrivePolicy bitLockerRemovableDrivePolicy = new BitLockerRemovableDrivePolicy();
bitLockerRemovableDrivePolicy.encryptionMethod = BitLockerEncryptionMethod.AES_CBC256;
bitLockerRemovableDrivePolicy.requireEncryptionForWriteAccess = true;
bitLockerRemovableDrivePolicy.blockCrossOrganizationWriteAccess = true;
deviceConfiguration.bitLockerRemovableDrivePolicy = bitLockerRemovableDrivePolicy;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```