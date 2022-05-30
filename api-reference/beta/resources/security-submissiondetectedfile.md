---
title: "submissionDetectedFile resource type"
description: "Represents threat submission detected file information"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionDetectedFile resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat submission detected file information.

## Properties
| Property | Type   | Description    |
|:---------|:-------|:---------------|
| fileHash | String | The file hash. |
| fileName | String | The file name. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionDetectedFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionDetectedFile",
  "fileName": "String",
  "fileHash": "String"
}
```

