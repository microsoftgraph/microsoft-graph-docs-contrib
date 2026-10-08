---
title: "modifiedProperty resource type"
description: "Represents a property value change recorded in an audit log entry."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# modifiedProperty resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a property value change recorded in an [auditLog](../resources/security-casemanagement-auditlog.md). Returned in the **modifiedProperties** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|newValue|[microsoft.graph.security.caseManagement.valueProperty](../resources/security-casemanagement-valueproperty.md)|The new value after the change.|
|oldValue|[microsoft.graph.security.caseManagement.valueProperty](../resources/security-casemanagement-valueproperty.md)|The previous value before the change.|
|propertyName|String|The name of the property that changed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.modifiedProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.modifiedProperty",
  "propertyName": "String",
  "oldValue": {
    "@odata.type": "#microsoft.graph.security.caseManagement.valueProperty"
  },
  "newValue": {
    "@odata.type": "#microsoft.graph.security.caseManagement.valueProperty"
  }
}
```
