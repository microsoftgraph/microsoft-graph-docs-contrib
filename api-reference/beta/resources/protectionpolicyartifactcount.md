---
title: "protectionPolicyArtifactCount resource type"
description: "Represents the count of artifacts protected as part of a protection policy by status."
author: "pkattekola"
ms.reviewer: "pkattekola"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/04/2025
---

# protectionPolicyArtifactCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the count of artifacts protected as part of a [protection policy](../resources/protectionpolicybase.md) by status. 

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completed|Int32|The number of artifacts whose protection is completed.|
|failed|Int32|The number of artifacts whose protection failed.|
|inProgress|Int32|The number of artifacts whose protection is in progress.|
|total|Int32|The number of artifacts present in the protection policy.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectionPolicyArtifactCount",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionPolicyArtifactCount",
  "completed": "Int32",
  "failed": "Int32",
  "inProgress": "Int32",
  "total": "Int32"
}
```
