---
title: "monitoring resource type"
description: "Represents the entry point entity type to access all alert-related resources. The monitoring APIs provide a programatic alert experience in Microsoft Endpoint Manager(MEM) admin center. MEM admins could create alert rules with prefered notification channels, like email and MEM portal notification, and receive alerts when conditions set in alert rules are met. Each alert will be recorded as an alert record. Admins could review created alert records to learn about alert impact, severity, status and more. Only MEM global admin, Intune admin and Cloud PC admin have access to monitoring APIs."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# monitoring resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point entity type to access all alert-related resources.

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
