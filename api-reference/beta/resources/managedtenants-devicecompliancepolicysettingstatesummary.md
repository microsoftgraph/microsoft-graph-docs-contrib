---
title: "deviceCompliancePolicySettingStateSummary resource type"
description: "Represents a summary of device compliance policy setting states for a given managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# deviceCompliancePolicySettingStateSummary resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of device compliance policy setting states for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List device compliance policy setting state summary](../api/managedtenants-managedtenant-list-devicecompliancepolicysettingstatesummary.md)|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) collection|Get a list of the [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) objects and their properties.|
|[Get device compliance policy setting state summary](../api/managedtenants-devicecompliancepolicysettingstatesummary-get.md)|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md)|Read the properties and relationships of a [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity. Required. Read-only.|
|conflictDeviceCount|Int32|The number of devices in a conflict state. Optional. Read-only.|
|errorDeviceCount|Int32|The number of devices in an error state. Optional. Read-only.|
|failedDeviceCount|Int32|The number of devices in a failed state. Optional. Read-only.|
|intuneAccountId|String|The identifer for the Microsoft Intune account. Required. Read-only.|
|intuneSettingId|String|The identifier for the Intune setting. Optional. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|notApplicableDeviceCount|Int32|The number of devices in a not applicable state. Optional. Read-only.|
|pendingDeviceCount|Int32|The number of devices in a pending state. Optional. Read-only.|
|policyType|String|The type for the device compliance policy. Optional. Read-only.|
|settingName|String|The name for the setting within the device compliance policy. Optional. Read-only.|
|succeededDeviceCount|Int32|The number of devices in a succeeded state. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "conflictDeviceCount": "Integer",
  "errorDeviceCount": "Integer",
  "failedDeviceCount": "Integer",
  "intuneAccountId": "String",
  "intuneSettingId": "String",
  "notApplicableDeviceCount": "Integer",
  "pendingDeviceCount": "Integer",
  "policyType": "String",
  "settingName": "String",
  "succeededDeviceCount": "Integer",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
