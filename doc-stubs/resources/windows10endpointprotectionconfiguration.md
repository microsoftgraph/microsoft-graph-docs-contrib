---
title: "windows10EndpointProtectionConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# windows10EndpointProtectionConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [deviceConfiguration](../resources/deviceconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windows10EndpointProtectionConfiguration](../api/windows10endpointprotectionconfiguration-list.md)|[windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) collection|Get a list of the [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) objects and their properties.|
|[Create windows10EndpointProtectionConfiguration](../api/windows10endpointprotectionconfiguration-create.md)|[windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md)|Create a new [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.|
|[Get windows10EndpointProtectionConfiguration](../api/windows10endpointprotectionconfiguration-get.md)|[windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md)|Read the properties and relationships of a [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.|
|[Update windows10EndpointProtectionConfiguration](../api/windows10endpointprotectionconfiguration-update.md)|[windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md)|Update the properties of a [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.|
|[Delete windows10EndpointProtectionConfiguration](../api/windows10endpointprotectionconfiguration-delete.md)|None|Deletes a [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationGuardAllowPersistence|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToLocalPrinters|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToNetworkPrinters|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToPDF|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToXPS|Boolean|**TODO: Add Description**|
|applicationGuardBlockClipboardSharing|applicationGuardBlockClipboardSharingType|**TODO: Add Description**. Possible values are: `notConfigured`, `blockBoth`, `blockHostToContainer`, `blockContainerToHost`, `blockNone`.|
|applicationGuardBlockFileTransfer|applicationGuardBlockFileTransferType|**TODO: Add Description**. Possible values are: `notConfigured`, `blockImageAndTextFile`, `blockImageFile`, `blockNone`, `blockTextFile`.|
|applicationGuardBlockNonEnterpriseContent|Boolean|**TODO: Add Description**|
|applicationGuardEnabled|Boolean|**TODO: Add Description**|
|applicationGuardForceAuditing|Boolean|**TODO: Add Description**|
|appLockerApplicationControl|appLockerApplicationControlType|**TODO: Add Description**. Possible values are: `notConfigured`, `enforceComponentsAndStoreApps`, `auditComponentsAndStoreApps`, `enforceComponentsStoreAppsAndSmartlocker`, `auditComponentsStoreAppsAndSmartlocker`.|
|bitLockerDisableWarningForOtherDiskEncryption|Boolean|**TODO: Add Description**|
|bitLockerEnableStorageCardEncryptionOnMobile|Boolean|**TODO: Add Description**|
|bitLockerEncryptDevice|Boolean|**TODO: Add Description**|
|bitLockerRemovableDrivePolicy|[bitLockerRemovableDrivePolicy](../resources/intune-bitlockerremovabledrivepolicy.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|defenderAdditionalGuardedFolders|String collection|**TODO: Add Description**|
|defenderAttackSurfaceReductionExcludedPaths|String collection|**TODO: Add Description**|
|defenderExploitProtectionXml|Binary|**TODO: Add Description**|
|defenderExploitProtectionXmlFileName|String|**TODO: Add Description**|
|defenderGuardedFoldersAllowedAppPaths|String collection|**TODO: Add Description**|
|defenderSecurityCenterBlockExploitProtectionOverride|Boolean|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|displayName|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|firewallBlockStatefulFTP|Boolean|**TODO: Add Description**|
|firewallCertificateRevocationListCheckMethod|firewallCertificateRevocationListCheckMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `none`, `attempt`, `require`.|
|firewallIdleTimeoutForSecurityAssociationInSeconds|Int32|**TODO: Add Description**|
|firewallIPSecExemptionsAllowDHCP|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowICMP|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowNeighborDiscovery|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowRouterDiscovery|Boolean|**TODO: Add Description**|
|firewallMergeKeyingModuleSettings|Boolean|**TODO: Add Description**|
|firewallPacketQueueingMethod|firewallPacketQueueingMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `disabled`, `queueInbound`, `queueOutbound`, `queueBoth`.|
|firewallPreSharedKeyEncodingMethod|firewallPreSharedKeyEncodingMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `none`, `utF8`.|
|firewallProfileDomain|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|firewallProfilePrivate|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|firewallProfilePublic|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|smartScreenBlockOverrideForFiles|Boolean|**TODO: Add Description**|
|smartScreenEnableInShell|Boolean|**TODO: Add Description**|
|version|Int32|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfigurationassignment.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-settingstatedevicesummary.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfigurationdevicestatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfigurationdeviceoverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfigurationuserstatus.md) collection|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfigurationuseroverview.md)|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/deviceconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10EndpointProtectionConfiguration",
  "baseType": "microsoft.graph.deviceConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": "Integer",
  "firewallBlockStatefulFTP": "Boolean",
  "firewallIdleTimeoutForSecurityAssociationInSeconds": "Integer",
  "firewallPreSharedKeyEncodingMethod": "String",
  "firewallIPSecExemptionsAllowNeighborDiscovery": "Boolean",
  "firewallIPSecExemptionsAllowICMP": "Boolean",
  "firewallIPSecExemptionsAllowRouterDiscovery": "Boolean",
  "firewallIPSecExemptionsAllowDHCP": "Boolean",
  "firewallCertificateRevocationListCheckMethod": "String",
  "firewallMergeKeyingModuleSettings": "Boolean",
  "firewallPacketQueueingMethod": "String",
  "firewallProfileDomain": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
  },
  "firewallProfilePublic": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
  },
  "firewallProfilePrivate": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
  },
  "defenderAttackSurfaceReductionExcludedPaths": [
    "String"
  ],
  "defenderGuardedFoldersAllowedAppPaths": [
    "String"
  ],
  "defenderAdditionalGuardedFolders": [
    "String"
  ],
  "defenderExploitProtectionXml": "Binary",
  "defenderExploitProtectionXmlFileName": "String",
  "defenderSecurityCenterBlockExploitProtectionOverride": "Boolean",
  "appLockerApplicationControl": "String",
  "smartScreenEnableInShell": "Boolean",
  "smartScreenBlockOverrideForFiles": "Boolean",
  "applicationGuardEnabled": "Boolean",
  "applicationGuardBlockFileTransfer": "String",
  "applicationGuardBlockNonEnterpriseContent": "Boolean",
  "applicationGuardAllowPersistence": "Boolean",
  "applicationGuardForceAuditing": "Boolean",
  "applicationGuardBlockClipboardSharing": "String",
  "applicationGuardAllowPrintToPDF": "Boolean",
  "applicationGuardAllowPrintToXPS": "Boolean",
  "applicationGuardAllowPrintToLocalPrinters": "Boolean",
  "applicationGuardAllowPrintToNetworkPrinters": "Boolean",
  "bitLockerDisableWarningForOtherDiskEncryption": "Boolean",
  "bitLockerEnableStorageCardEncryptionOnMobile": "Boolean",
  "bitLockerEncryptDevice": "Boolean",
  "bitLockerRemovableDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy"
  }
}
```

