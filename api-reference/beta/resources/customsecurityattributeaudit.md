---
title: "customSecurityAttributeAudit resource type"
description: "Represents a custom security attribute audit log."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# customSecurityAttributeAudit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom security attribute audit log.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customSecurityAttributeAudits](../api/customsecurityattributeaudit-list.md)|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) collection|List the custom security attribute audit items in the collection and their properties.|
|[Get customSecurityAttributeAudit](../api/customsecurityattributeaudit-get.md)|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md)|Get a specific custom security attribute audit item and its properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset| Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2024 is `2024-01-01T00:00:00Z`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|activityDisplayName|String|Indicates the activity name or the operation name. For example: "Add custom security attribute definition in an attribute set" or "Update attribute values assigned to a user". For a list of activities logged, refer to [Azure AD audit log categories and activities](/azure/active-directory/reports-monitoring/reference-audit-activities). Inherited from [directoryAudit](../resources/directoryaudit.md).|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|Indicates additional details on the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|category|String|Indicates the resource category that's targeted by the activity. Custom security attribute activities are logged in a single category: `AttributeManagement`. |
|correlationId|String|Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|id|String|Indicates the unique ID for the activity. Inherited from [entity](../resources/enity.md).|
|initiatedBy|[auditActivityInitiator](../resources/auditactivityinitiator.md)|Indicates information about the user or app initiated the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|loggedByService|String|Indicates information on which service initiated the activity. For example: `Core Directory`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|operationType|String|Indicates the type of operation that was performed. The possible values include but are not limited to the following: `Add`, `Assign`, `Update`, `Unassign`, and `Delete`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|result|operationResult|Indicates the result of the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`, `clientError`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `clientError`.|
|resultReason|String|Indicates the reason for failure if the **result** is `failure` or `timeout`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|targetResources|[targetResource](../resources/targetresource.md) collection|Indicates information on which resource was changed due to the activity. The target resource type can be `User`, `App`, or `Other`. Inherited from [directoryAudit](../resources/directoryaudit.md).|
|userAgent|String|Type of user agent used by a user in the activity. Inherited from [directoryAudit](../resources/directoryaudit.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customSecurityAttributeAudit",
  "baseType": "microsoft.graph.directoryAudit",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSecurityAttributeAudit",
  "id": "String (identifier)",
  "category": "String",
  "correlationId": "String",
  "result": "String",
  "resultReason": "String",
  "activityDisplayName": "String",
  "activityDateTime": "String (timestamp)",
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
  ]
}
```

