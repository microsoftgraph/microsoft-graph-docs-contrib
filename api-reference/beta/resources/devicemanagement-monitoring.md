---
title: "monitoring resource type"
description: "Represents the entry point entity type to access all resources related to alerts in the Microsoft Endpoint Manager admin center."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# monitoring resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point to access all resources related to alerts in the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com).

The alert monitoring API provide a programmatic alert experience in the Microsoft Endpoint Manager admin center. A Microsoft Endpoint Manager admin can create an [alert rule](devicemanagement-alertrule.md) with preferred notification channels, and receive alerts when conditions set as thresholds in alert rules are met. Notification channels may include email and Microsoft Endpoint Manager admin center notifications. Each alert is recorded as an [alert record](devicemanagement-alertrecord.md). Admins can review alert records to learn about alert impact, severity, status, and more. 

The roles of global admin, Intune admin, and Windows 365 admin have full access to the alert monitoring API.

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the alert. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|alertRecords|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md) collection|The collection of records of alert events.|
|alertRules|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) collection|The collection of alert rules.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement.monitoring",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.monitoring",
  "id": "String (identifier)"
}
```
