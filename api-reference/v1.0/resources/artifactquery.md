---
title: "artifactQuery resource type"
description: "Contains the query for artifactQuery."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# artifactQuery resource type

Namespace: microsoft.graph

Contains the query for artifactQuery.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|queryExpression|String|.|
|artifactType|[restorableArtifact](../resources/artifactquery.md#restorableArtifact-values)|. The possible values are: `message`, `unknownFutureValue`.|

### restorableArtifact values

|Member | Description |
|:------|:------------|
|message | .|
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
