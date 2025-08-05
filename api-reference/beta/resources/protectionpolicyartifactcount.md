---
title: "protectionPolicyArtifactCount resource type"
description: "Represents artifact count metadata for a Protection Policy."
author: "pkattekola"
ms.reviewer: "pkattekola"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: ProtectionPolicyArtifactCount
ms.date: 08/04/2025
---

# protectionPolicyArtifactCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the count of artifacts protected as part of a [protection policy](../resources/protectionpolicybase.md) by status. 

## Properties

|Property|Type|Description|
|:---|:---|:---|
|total|Int32|The number of artifacts present in the protection policy.|
|inProgress|Int32|The number of artifacts whose protection is in progress.|
|completed|Int32|The number of artifacts whose protection is completed.|
|failed|Int32|The number of artifacts whose protection failed.|

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
  "total": "Int32",
  "inProgress": "Int32",
  "completed": "Int32",
  "failed": "Int32"
}
```
