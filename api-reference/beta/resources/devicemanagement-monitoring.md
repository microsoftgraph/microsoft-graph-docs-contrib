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

Represents the entry point entity type to access all resources related to alerts in the Microsoft Endpoint Manager admin center. 

The monitoring APIs provide a programmatic alert experience in the Microsoft Endpoint Manager admin center. Microsoft Endpoint Manager admins can create alert rules with preferred notification channels, and receive alerts when conditions set as thresholds in alert rules are met. Notification channels may include email and Microsoft Endpoint Manager admin center notifications. Each alert is recorded as an [alert record](devicemanagement-alertrecord.md). Admins can review alert records to learn about alert impact, severity, status, and more. Only the roles of a global admin, Intune admin, Windows 365 admin, and Cloud PC admin have access to the monitoring APIs.

Currently this API set supports only [Windows 365](\windows-365\overview) and Cloud PC scenarios. It allows admins to set up rules and alert issues with provisioning Cloud PCs, uploading Cloud PC images, and checking Azure network connections. 

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
