---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows10EndpointProtectionConfiguration deviceConfiguration = new Windows10EndpointProtectionConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windows10EndpointProtectionConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setFirewallBlockStatefulFTP(true);
deviceConfiguration.setFirewallIdleTimeoutForSecurityAssociationInSeconds(2);
deviceConfiguration.setFirewallPreSharedKeyEncodingMethod(FirewallPreSharedKeyEncodingMethodType.None);
deviceConfiguration.setFirewallIPSecExemptionsAllowNeighborDiscovery(true);
deviceConfiguration.setFirewallIPSecExemptionsAllowICMP(true);
deviceConfiguration.setFirewallIPSecExemptionsAllowRouterDiscovery(true);
deviceConfiguration.setFirewallIPSecExemptionsAllowDHCP(true);
deviceConfiguration.setFirewallCertificateRevocationListCheckMethod(FirewallCertificateRevocationListCheckMethodType.None);
deviceConfiguration.setFirewallMergeKeyingModuleSettings(true);
deviceConfiguration.setFirewallPacketQueueingMethod(FirewallPacketQueueingMethodType.Disabled);
WindowsFirewallNetworkProfile firewallProfileDomain = new WindowsFirewallNetworkProfile();
firewallProfileDomain.setOdataType("microsoft.graph.windowsFirewallNetworkProfile");
firewallProfileDomain.setFirewallEnabled(StateManagementSetting.Blocked);
firewallProfileDomain.setStealthModeBlocked(true);
firewallProfileDomain.setIncomingTrafficBlocked(true);
firewallProfileDomain.setUnicastResponsesToMulticastBroadcastsBlocked(true);
firewallProfileDomain.setInboundNotificationsBlocked(true);
firewallProfileDomain.setAuthorizedApplicationRulesFromGroupPolicyMerged(true);
firewallProfileDomain.setGlobalPortRulesFromGroupPolicyMerged(true);
firewallProfileDomain.setConnectionSecurityRulesFromGroupPolicyMerged(true);
firewallProfileDomain.setOutboundConnectionsBlocked(true);
firewallProfileDomain.setInboundConnectionsBlocked(true);
firewallProfileDomain.setSecuredPacketExemptionAllowed(true);
firewallProfileDomain.setPolicyRulesFromGroupPolicyMerged(true);
deviceConfiguration.setFirewallProfileDomain(firewallProfileDomain);
WindowsFirewallNetworkProfile firewallProfilePublic = new WindowsFirewallNetworkProfile();
firewallProfilePublic.setOdataType("microsoft.graph.windowsFirewallNetworkProfile");
firewallProfilePublic.setFirewallEnabled(StateManagementSetting.Blocked);
firewallProfilePublic.setStealthModeBlocked(true);
firewallProfilePublic.setIncomingTrafficBlocked(true);
firewallProfilePublic.setUnicastResponsesToMulticastBroadcastsBlocked(true);
firewallProfilePublic.setInboundNotificationsBlocked(true);
firewallProfilePublic.setAuthorizedApplicationRulesFromGroupPolicyMerged(true);
firewallProfilePublic.setGlobalPortRulesFromGroupPolicyMerged(true);
firewallProfilePublic.setConnectionSecurityRulesFromGroupPolicyMerged(true);
firewallProfilePublic.setOutboundConnectionsBlocked(true);
firewallProfilePublic.setInboundConnectionsBlocked(true);
firewallProfilePublic.setSecuredPacketExemptionAllowed(true);
firewallProfilePublic.setPolicyRulesFromGroupPolicyMerged(true);
deviceConfiguration.setFirewallProfilePublic(firewallProfilePublic);
WindowsFirewallNetworkProfile firewallProfilePrivate = new WindowsFirewallNetworkProfile();
firewallProfilePrivate.setOdataType("microsoft.graph.windowsFirewallNetworkProfile");
firewallProfilePrivate.setFirewallEnabled(StateManagementSetting.Blocked);
firewallProfilePrivate.setStealthModeBlocked(true);
firewallProfilePrivate.setIncomingTrafficBlocked(true);
firewallProfilePrivate.setUnicastResponsesToMulticastBroadcastsBlocked(true);
firewallProfilePrivate.setInboundNotificationsBlocked(true);
firewallProfilePrivate.setAuthorizedApplicationRulesFromGroupPolicyMerged(true);
firewallProfilePrivate.setGlobalPortRulesFromGroupPolicyMerged(true);
firewallProfilePrivate.setConnectionSecurityRulesFromGroupPolicyMerged(true);
firewallProfilePrivate.setOutboundConnectionsBlocked(true);
firewallProfilePrivate.setInboundConnectionsBlocked(true);
firewallProfilePrivate.setSecuredPacketExemptionAllowed(true);
firewallProfilePrivate.setPolicyRulesFromGroupPolicyMerged(true);
deviceConfiguration.setFirewallProfilePrivate(firewallProfilePrivate);
LinkedList<String> defenderAttackSurfaceReductionExcludedPaths = new LinkedList<String>();
defenderAttackSurfaceReductionExcludedPaths.add("Defender Attack Surface Reduction Excluded Paths value");
deviceConfiguration.setDefenderAttackSurfaceReductionExcludedPaths(defenderAttackSurfaceReductionExcludedPaths);
LinkedList<String> defenderGuardedFoldersAllowedAppPaths = new LinkedList<String>();
defenderGuardedFoldersAllowedAppPaths.add("Defender Guarded Folders Allowed App Paths value");
deviceConfiguration.setDefenderGuardedFoldersAllowedAppPaths(defenderGuardedFoldersAllowedAppPaths);
LinkedList<String> defenderAdditionalGuardedFolders = new LinkedList<String>();
defenderAdditionalGuardedFolders.add("Defender Additional Guarded Folders value");
deviceConfiguration.setDefenderAdditionalGuardedFolders(defenderAdditionalGuardedFolders);
byte[] defenderExploitProtectionXml = Base64.getDecoder().decode("ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA==");
deviceConfiguration.setDefenderExploitProtectionXml(defenderExploitProtectionXml);
deviceConfiguration.setDefenderExploitProtectionXmlFileName("Defender Exploit Protection Xml File Name value");
deviceConfiguration.setDefenderSecurityCenterBlockExploitProtectionOverride(true);
deviceConfiguration.setAppLockerApplicationControl(AppLockerApplicationControlType.EnforceComponentsAndStoreApps);
deviceConfiguration.setSmartScreenEnableInShell(true);
deviceConfiguration.setSmartScreenBlockOverrideForFiles(true);
deviceConfiguration.setApplicationGuardEnabled(true);
deviceConfiguration.setApplicationGuardBlockFileTransfer(ApplicationGuardBlockFileTransferType.BlockImageAndTextFile);
deviceConfiguration.setApplicationGuardBlockNonEnterpriseContent(true);
deviceConfiguration.setApplicationGuardAllowPersistence(true);
deviceConfiguration.setApplicationGuardForceAuditing(true);
deviceConfiguration.setApplicationGuardBlockClipboardSharing(ApplicationGuardBlockClipboardSharingType.BlockBoth);
deviceConfiguration.setApplicationGuardAllowPrintToPDF(true);
deviceConfiguration.setApplicationGuardAllowPrintToXPS(true);
deviceConfiguration.setApplicationGuardAllowPrintToLocalPrinters(true);
deviceConfiguration.setApplicationGuardAllowPrintToNetworkPrinters(true);
deviceConfiguration.setBitLockerDisableWarningForOtherDiskEncryption(true);
deviceConfiguration.setBitLockerEnableStorageCardEncryptionOnMobile(true);
deviceConfiguration.setBitLockerEncryptDevice(true);
BitLockerRemovableDrivePolicy bitLockerRemovableDrivePolicy = new BitLockerRemovableDrivePolicy();
bitLockerRemovableDrivePolicy.setOdataType("microsoft.graph.bitLockerRemovableDrivePolicy");
bitLockerRemovableDrivePolicy.setEncryptionMethod(BitLockerEncryptionMethod.AesCbc256);
bitLockerRemovableDrivePolicy.setRequireEncryptionForWriteAccess(true);
bitLockerRemovableDrivePolicy.setBlockCrossOrganizationWriteAccess(true);
deviceConfiguration.setBitLockerRemovableDrivePolicy(bitLockerRemovableDrivePolicy);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```