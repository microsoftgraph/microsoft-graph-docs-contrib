---
title: "Create windows10EndpointProtectionConfiguration"
description: "Create a new windows10EndpointProtectionConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create windows10EndpointProtectionConfiguration
Namespace: microsoft.graph

Create a new [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.windows10EndpointProtectionConfiguration not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object.

The following table shows the properties that are required when you create the [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|description|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|displayName|String|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|version|Int32|**TODO: Add Description** Inherited from [deviceConfiguration](../resources/intune-deviceconfiguration.md)|
|firewallBlockStatefulFTP|Boolean|**TODO: Add Description**|
|firewallIdleTimeoutForSecurityAssociationInSeconds|Int32|**TODO: Add Description**|
|firewallPreSharedKeyEncodingMethod|firewallPreSharedKeyEncodingMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `none`, `utF8`.|
|firewallIPSecExemptionsAllowNeighborDiscovery|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowICMP|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowRouterDiscovery|Boolean|**TODO: Add Description**|
|firewallIPSecExemptionsAllowDHCP|Boolean|**TODO: Add Description**|
|firewallCertificateRevocationListCheckMethod|firewallCertificateRevocationListCheckMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `none`, `attempt`, `require`.|
|firewallMergeKeyingModuleSettings|Boolean|**TODO: Add Description**|
|firewallPacketQueueingMethod|firewallPacketQueueingMethodType|**TODO: Add Description**. Possible values are: `deviceDefault`, `disabled`, `queueInbound`, `queueOutbound`, `queueBoth`.|
|firewallProfileDomain|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|firewallProfilePublic|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|firewallProfilePrivate|[windowsFirewallNetworkProfile](../resources/intune-windowsfirewallnetworkprofile.md)|**TODO: Add Description**|
|defenderAttackSurfaceReductionExcludedPaths|String collection|**TODO: Add Description**|
|defenderGuardedFoldersAllowedAppPaths|String collection|**TODO: Add Description**|
|defenderAdditionalGuardedFolders|String collection|**TODO: Add Description**|
|defenderExploitProtectionXml|Binary|**TODO: Add Description**|
|defenderExploitProtectionXmlFileName|String|**TODO: Add Description**|
|defenderSecurityCenterBlockExploitProtectionOverride|Boolean|**TODO: Add Description**|
|appLockerApplicationControl|appLockerApplicationControlType|**TODO: Add Description**. Possible values are: `notConfigured`, `enforceComponentsAndStoreApps`, `auditComponentsAndStoreApps`, `enforceComponentsStoreAppsAndSmartlocker`, `auditComponentsStoreAppsAndSmartlocker`.|
|smartScreenEnableInShell|Boolean|**TODO: Add Description**|
|smartScreenBlockOverrideForFiles|Boolean|**TODO: Add Description**|
|applicationGuardEnabled|Boolean|**TODO: Add Description**|
|applicationGuardBlockFileTransfer|applicationGuardBlockFileTransferType|**TODO: Add Description**. Possible values are: `notConfigured`, `blockImageAndTextFile`, `blockImageFile`, `blockNone`, `blockTextFile`.|
|applicationGuardBlockNonEnterpriseContent|Boolean|**TODO: Add Description**|
|applicationGuardAllowPersistence|Boolean|**TODO: Add Description**|
|applicationGuardForceAuditing|Boolean|**TODO: Add Description**|
|applicationGuardBlockClipboardSharing|applicationGuardBlockClipboardSharingType|**TODO: Add Description**. Possible values are: `notConfigured`, `blockBoth`, `blockHostToContainer`, `blockContainerToHost`, `blockNone`.|
|applicationGuardAllowPrintToPDF|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToXPS|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToLocalPrinters|Boolean|**TODO: Add Description**|
|applicationGuardAllowPrintToNetworkPrinters|Boolean|**TODO: Add Description**|
|bitLockerDisableWarningForOtherDiskEncryption|Boolean|**TODO: Add Description**|
|bitLockerEnableStorageCardEncryptionOnMobile|Boolean|**TODO: Add Description**|
|bitLockerEncryptDevice|Boolean|**TODO: Add Description**|
|bitLockerRemovableDrivePolicy|[bitLockerRemovableDrivePolicy](../resources/intune-bitlockerremovabledrivepolicy.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_windows10endpointprotectionconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.windows10EndpointProtectionConfiguration not found
Content-Type: application/json
Content-length: 2317

{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
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


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windows10EndpointProtectionConfiguration"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
  "id": "21609d34-9d34-2160-349d-6021349d6021",
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

