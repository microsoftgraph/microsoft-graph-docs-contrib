---
title: "repositoryDisconnectResult resource type"
description: "Reports best-effort cleanup through the **warning** property in the **disconnect** action response for a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryDisconnectResult resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reports best-effort cleanup through the **warning** property in the **disconnect** action response for a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|warning|String|Optional warning from best-effort cleanup.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryDisconnectResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryDisconnectResult",
  "warning": "String"
}
```
