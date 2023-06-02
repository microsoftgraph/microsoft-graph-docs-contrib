---
title: "customSecurityAttributeAudit resource type"
description: "**TODO: Add Description**"
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# customSecurityAttributeAudit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryAudit](../resources/directoryaudit.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customSecurityAttributeAudits](../api/auditlogroot-list-customsecurityattributeaudits.md)|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) collection|Get a list of the [customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) objects and their properties.|
|[Get customSecurityAttributeAudit](../api/customsecurityattributeaudit-get.md)|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md)|Read the properties and relationships of a [customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|activityDisplayName|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|additionalDetails|[keyValue](../resources/keyvalue.md) collection|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|category|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|correlationId|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|id|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|initiatedBy|[auditActivityInitiator](../resources/auditactivityinitiator.md)|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|loggedByService|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|operationType|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|result|operationResult|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).The possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`, `clientError`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `clientError`.|
|resultReason|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|targetResources|[targetResource](../resources/targetresource.md) collection|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|
|userAgent|String|**TODO: Add Description** Inherited from [directoryAudit](../resources/directoryaudit.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customSecurityAttributeAudit",
  "baseType": "Microsoft.AAD.Reporting.directoryAudit",
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

