---
title: "systemData resource type"
description: "Contains creation and modification provenance for the **systemData** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# systemData resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains creation and modification provenance for the **systemData** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|Identifier of the identity that created the connection.|
|createdByType|String|Type of identity that created the connection.|
|createdDateTime|DateTimeOffset|UTC resource creation time.|
|lastModifiedBy|String|Identifier of the identity that last modified the connection.|
|lastModifiedByType|String|Type of identity that last modified the connection.|
|lastModifiedDateTime|DateTimeOffset|UTC time of the last effective modification.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.systemData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.systemData",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "createdByType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "lastModifiedByType": "String"
}
```
