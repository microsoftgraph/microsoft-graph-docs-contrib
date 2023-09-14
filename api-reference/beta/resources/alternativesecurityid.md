---
title: "alternativeSecurityId resource type"
description: "For internal use only."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "directory-management"
author: "myra-ramdenbourg"
---

# alternativeSecurityId resource type

Namespace: microsoft.graph

For internal use only. This complex type will be deprecated in the future.

## Properties

| Property         | Type       | Description           |
|:-----------------|:-----------|:----------------------|
| identityProvider | String     | For internal use only.|
| key              | Edm.Binary | For internal use only.|
| type             | Int32      | For internal use only.|

## JSON representation

The following is a JSON representation of the resource.

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
