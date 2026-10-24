---
title: "appManagementAudit resource type"
description: "Represents a Microsoft Entra application management audit log entry."
author: "yclkvnc"
ms.date: 08/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# appManagementAudit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra application management audit log entry and the app management policy restrictions applied to the activity.

Inherits from [directoryAudit](../resources/directoryaudit.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List appManagementAudit objects](../api/appmanagementaudit-list.md)|[appManagementAudit](../resources/appmanagementaudit.md) collection|Get app management audit logs and their properties.|
|[Get appManagementAudit](../api/appmanagementaudit-get.md)|[appManagementAudit](../resources/appmanagementaudit.md)|Get an app management audit log and its properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|The date and time when the activity was performed. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|activityDisplayName|String|The activity or operation name. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|Additional details about the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|appliedAppManagementPolicyRestrictions|[appliedAppManagementPolicyRestriction](../resources/appliedappmanagementpolicyrestriction.md) collection|Details of the app management policy restrictions applied to the activity. Supports `$filter` (`eq`).|
|category|String|The resource category targeted by the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|correlationId|String|The unique identifier used to correlate activities that span multiple services. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|id|String|The unique identifier for the activity. Inherited from [entity](../resources/entity.md).|
|initiatedBy|[auditActivityInitiator](../resources/auditactivityinitiator.md)|The user or app that initiated the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|loggedByService|String|The service that initiated the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|operationType|String|The type of operation that was performed. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|result|operationResult|The result of the activity. Inherited from [directoryAudit](../resources/directoryaudit.md). The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`.|
|resultReason|String|The reason for a failure when **result** is `failure` or `timeout`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|targetResources|[targetResource](../resources/targetresource.md) collection|Information about the resources changed by the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|userAgent|String|The user agent used for the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appManagementAudit",
  "baseType": "microsoft.graph.directoryAudit",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.appManagementAudit",
  "id": "String",
  "category": "String",
  "correlationId": "String",
  "result": "String",
  "resultReason": "String",
  "activityDisplayName": "String",
  "activityDateTime": "DateTimeOffset",
  "loggedByService": "String",
  "operationType": "String",
  "initiatedBy": {
    "@odata.type": "microsoft.graph.auditActivityInitiator"
  },
  "targetResources": [
    {
      "@odata.type": "microsoft.graph.targetResource"
    }
  ],
  "userAgent": "String",
  "additionalDetails": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "appliedAppManagementPolicyRestrictions": [
    {
      "@odata.type": "microsoft.graph.appliedAppManagementPolicyRestriction"
    }
  ]
}
```
