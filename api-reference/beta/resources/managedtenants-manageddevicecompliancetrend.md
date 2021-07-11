---
title: "managedDeviceComplianceTrend resource type"
description: "Represents a trend of compliant and non-compliant devices for a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managedDeviceComplianceTrend resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a trend of compliant and non-compliant devices for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List managedDeviceComplianceTrends](../api/managedtenants-managedtenant-list-manageddevicecompliancetrend.md)|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) collection|Get a list of the [managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) objects and their properties.|
|[Get managedDeviceComplianceTrend](../api/managedtenants-manageddevicecompliancetrend-get.md)|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md)|Read the properties and relationships of a [managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compliantDeviceCount|Int32|The number of devices with a compliant status.|
|configManagerDeviceCount|Int32|The number of devices manged by Configuration Manager.|
|countDateTime|String|The date and time compliance snapshot was performed.|
|errorDeviceCount|Int32|The number of devices with an error status.|
|id|String|The unique identifier for this entity.|
|inGracePeriodDeviceCount|Int32|The number of devices that are in a grace period status.|
|noncompliantDeviceCount|Int32|The number of devices that are in a non-compliant status.|
|tenantDisplayName|String|The display name for the managed tenant.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|
|unknownDeviceCount|Int32|The number of devices in an unknown status.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managedDeviceComplianceTrend",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedDeviceComplianceTrend",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "unknownDeviceCount": "Integer",
  "compliantDeviceCount": "Integer",
  "noncompliantDeviceCount": "Integer",
  "errorDeviceCount": "Integer",
  "inGracePeriodDeviceCount": "Integer",
  "configManagerDeviceCount": "Integer",
  "countDateTime": "String"
}
```
