---
title: "detonationChain resource type"
description: detonations chain of a specific entity 
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.prod: security
doc_type: resourcePageType
---

# detonationChain resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A single file or URL detonation can trigger multiple detonations. The Detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs affected by the detonation. These URLs or attached files may not be directly present in the email, but including that analysis is important to determining why the file or URL was found to be malicious.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childNodes|[microsoft.graph.security.detonationChain](../resources/security-detonationchain.md) collection|List of all child Nodes in the chain.|
|value|String|Value of the chain.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationChain"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationChain",
  "value": "String",
  "childNodes": [
    {
      "@odata.type": "microsoft.graph.security.detonationChain"
    }
  ]
}
```

