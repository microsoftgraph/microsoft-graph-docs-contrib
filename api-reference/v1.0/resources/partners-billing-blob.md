---
title: "blob resource type"
description: "Represents a billing blob that contains exported data."
author: "sourishdeb"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# blob resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents a billing blob that contains exported data.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|The blob name.|
|partitionValue|String|The partition that contains the file. A large partition is split into multiple files, each with the same **partitionValue**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.partners.billing.blob"
}
-->
``` json
{
  "name": "String",
  "partitionValue": "String"
}
```
