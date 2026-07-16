---
title: "attachmentOrigin resource type"
description: "Contains information about the resource from which an attachment originated."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# attachmentOrigin resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the resource from which an [attachment](../resources/security-casemanagement-attachment.md) originated. Returned in the **origin** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The identifier of the origin resource.|
|resourceType|[microsoft.graph.security.caseManagement.attachmentOriginType](#attachmentorigintype-values)|The type of origin resource.|

### attachmentOriginType values

|Member|Description|
|:---|:---|
|case|The attachment originated from a case.|
|comment|The attachment originated from a comment activity.|
|task|The attachment originated from a task.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.attachmentOrigin"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.attachmentOrigin",
  "resourceId": "String",
  "resourceType": "String"
}
```
