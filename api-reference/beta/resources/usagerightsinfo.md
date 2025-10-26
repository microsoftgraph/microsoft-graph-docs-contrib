---
title: "usageRightsInfo resource type"
description: "Represents the detailed usage rights and permissions that a user has on content protected by a sensitivity label."
author: "ankku"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# usageRightsInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detailed usage rights and permissions that a user has on content protected by a sensitivity label. This resource is based on Rights Management Services (RMS) usage rights evaluation and determines what actions the user can perform on the protected content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowCopy|Boolean|Indicates whether the user has permission to copy content from the protected resource. When `true`, copying is allowed; when `false`, copying is restricted by the sensitivity label policy.|
|allowEdit|Boolean|Indicates whether the user has permission to edit or modify the protected content. When `true`, editing is allowed; when `false`, the content is read-only for this user.|
|allowExport|Boolean|Indicates whether the user has permission to export or save the protected content to external locations. When `true`, exporting is allowed; when `false`, export operations are restricted.|
|allowPrint|Boolean|Indicates whether the user has permission to print the protected content. When `true`, printing is allowed; when `false`, print functionality is disabled.|
|allowView|Boolean|Indicates whether the user has permission to view or access the protected content. When `true`, the user can view the content; when `false`, access is denied.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.usageRightsInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usageRightsInfo",
  "allowCopy": "Boolean",
  "allowEdit": "Boolean",
  "allowExport": "Boolean",
  "allowPrint": "Boolean",
  "allowView": "Boolean"
}
```
