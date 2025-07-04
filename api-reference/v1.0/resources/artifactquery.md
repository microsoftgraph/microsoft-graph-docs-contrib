---
title: "artifactQuery resource type"
description: "Contains an expression that specifies the criteria for search."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# artifactQuery resource type

Namespace: microsoft.graph

Contains an expression that specifies the criteria for search.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|artifactType|[restorableArtifact](../resources/artifactquery.md#restorableartifact-values)|The type of artifact to search. The possible values are: `message`, `unknownFutureValue`.|
|queryExpression|String|Specifies criteria to retrieve artifacts.|

### restorableArtifact values

|Member | Description |
|:------|:------------|
|message | Mailbox message.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.artifactQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.artifactQuery",
  "queryExpression": "String",
  "artifactType": "String"
}
```
