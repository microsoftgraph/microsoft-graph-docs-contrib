---
title: "alternativeSecurityId resource type"
description: "For internal use only."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# alternativeSecurityId resource type

Namespace: microsoft.graph

For internal use only. This complex type will be deprecated in the future.

## Properties

| Property         | Type       | Description           |
|:-----------------|:-----------|:----------------------|
| identityProvider | string     | For internal use only.|
| key              | Edm.Binary | For internal use only.|
| type             | Int32      | For internal use only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.alternativeSecurityId"
}-->

```json
{
  "identityProvider": "String",
  "key": {"@odata.type": "Edm.Binary"},
  "type": "Int32"
}
```
