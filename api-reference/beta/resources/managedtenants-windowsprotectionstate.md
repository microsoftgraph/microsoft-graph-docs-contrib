---
title: "windowsProtectionState resource type"
description: "Represent the Windows protection state for managed devices running Windows."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# windowsProtectionState resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the Windows protection state for managed devices running Windows.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsProtectionStates](../api/managedtenants-windowsprotectionstate-list.md)|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|Get a list of the [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) objects and their properties.|
|[Get windowsProtectionState](../api/managedtenants-windowsprotectionstate-get.md)|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md)|Read the properties and relationships of a [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|antiMalwareVersion|String|The anti-malware version for the managed device.|
|attentionRequired|Boolean|A flag indicating whether attention is required for the managed device.|
|deviceDeleted|Boolean|A flag indicating whether the managed device has been deleted.|
|devicePropertyRefreshDateTime|DateTimeOffset|The date and time the device property has been refreshed.|
|engineVersion|String|The anti-virus engine version for the managed device.|
|fullScanOverdue|Boolean|A flag indicating whether quick scan is overdue for the managed device.|
|fullScanRequired|Boolean|A flag indicating whether full scan is overdue for the managed device.|
|id|String|The unique identifier for the Windows protection state.|
|lastFullScanDateTime|DateTimeOffset|The date and time a full scan was completed.|
|lastFullScanSignatureVersion|String|The version anti-malware version used to perform the last full scan.|
|lastQuickScanDateTime|DateTimeOffset|The date and time a quick scan was completed.|
|lastQuickScanSignatureVersion|String|The version anti-malware version used to perform the last full scan.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform.|
|lastReportedDateTime|DateTimeOffset|The date and time the protection state was last reported for the managed device.|
|malwareProtectionEnabled|Boolean|A flag indicating whether malware protection is enabled for the managed device.|
|managedDeviceHealthState|String|The health state for the managed device.|
|managedDeviceId|String|The unique identifier for the managed device.|
|managedDeviceName|String|The display name for the managed device.|
|networkInspectionSystemEnabled|Boolean|A flag indicating whether the network inspection system is enabled.|
|quickScanOverdue|Boolean|A flag indicating weather a quick scan is overdue.|
|realTimeProtectionEnabled|Boolean|A flag indicating whether real time protection is enabled.|
|rebootRequired|Boolean|A flag indicating whether a reboot is required.|
|signatureUpdateOverdue|Boolean|A flag indicating whether an signature update is overdue.|
|signatureVersion|String|The signature version for the managed device.|
|tenantDisplayName|String|The display name for the managed tenant.|
|tenantId|String|The Azure Active Directory tenant identifier for the managed tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.windowsProtectionState",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.windowsProtectionState",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "malwareProtectionEnabled": "Boolean",
  "managedDeviceHealthState": "String",
  "realTimeProtectionEnabled": "Boolean",
  "networkInspectionSystemEnabled": "Boolean",
  "quickScanOverdue": "Boolean",
  "fullScanOverdue": "Boolean",
  "signatureUpdateOverdue": "Boolean",
  "rebootRequired": "Boolean",
  "attentionRequired": "Boolean",
  "fullScanRequired": "Boolean",
  "engineVersion": "String",
  "signatureVersion": "String",
  "antiMalwareVersion": "String",
  "lastQuickScanDateTime": "String (timestamp)",
  "lastFullScanDateTime": "String (timestamp)",
  "lastQuickScanSignatureVersion": "String",
  "lastFullScanSignatureVersion": "String",
  "lastReportedDateTime": "String (timestamp)",
  "devicePropertyRefreshDateTime": "String (timestamp)",
  "deviceDeleted": "Boolean",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
