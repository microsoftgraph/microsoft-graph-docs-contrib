---
title: "m365CapabilityResourceScope resource type"
description: "Specifies the resource that a cross-tenant capability policy applies to."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: "Microsoft 365 capability resource scope"
---

# m365CapabilityResourceScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the resource that a cross-tenant capability policy applies to. This type defines which specific user or group a policy affects.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The ID of the resource to modify (a user or group ID).|
|resourceType|[m365ResourceType](#m365resourcetype-values)|The type of resource. The possible values are: `none`, `group`, `user`, `unknownFutureValue`.|

### m365ResourceType values

| Member             | Description                       |
| ------------------ | --------------------------------- |
| none               | A value to use instead of `null`.   |
| group              | The resource ID is a group ID.    |
| user               | The resource ID is a user ID.     |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.m365CapabilityResourceScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365CapabilityResourceScope",
  "resourceId": "String",
  "resourceType": "String"
}
```
