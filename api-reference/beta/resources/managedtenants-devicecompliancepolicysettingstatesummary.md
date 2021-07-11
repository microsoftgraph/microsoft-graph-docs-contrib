---
title: "deviceCompliancePolicySettingStateSummary resource type"
description: "Represents a summary of device compliance policy setting states for a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# deviceCompliancePolicySettingStateSummary resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of device compliance policy setting states for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceCompliancePolicySettingStateSummary](../api/managedtenants-managedtenant-list-devicecompliancepolicysettingstatesummary.md)|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) collection|Get a list of the [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) objects and their properties.|
|[Get deviceCompliancePolicySettingStateSummary](../api/managedtenants-devicecompliancepolicysettingstatesummary-get.md)|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md)|Read the properties and relationships of a [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|
|conflictDeviceCount|Int32|The number of devices in a conflict state.|
|errorDeviceCount|Int32|The number of devices in an error state.|
|failedDeviceCount|Int32|The number of devices in a failed state.|
|intuneAccountId|String|The identifer for the Microsoft Intune account.|
|intuneSettingId|String|The identifier for the Intune setting.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform.|
|notApplicableDeviceCount|Int32|The number of devices in a not applicable state.|
|pendingDeviceCount|Int32|The number of devices in a pending state.|
|policyType|String|The type for the device compliance policy.|
|settingName|String|The name for the setting within the device compliance policy.|
|succeededDeviceCount|Int32|The number of devices in a succeeded state.|
|tenantDisplayName|String|The display name for the managed tenant.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
