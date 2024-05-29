---
title: "detonationChain resource type"
description: Represents a detonation chain in Microsoft Defender for Office 365. 
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
---

# detonationChain resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a detonation chain in Microsoft Defender for Office 365. A single file or URL detonation can trigger multiple detonations. The detonation chain tracks the path of detonations, including the original malicious file or URL that caused the verdict, and all other files or URLs that are affected by the detonation. These URLs or attached files might not be directly present in the email, but including that analysis is important in order to determine why the file or URL was found to be malicious.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childNodes|[microsoft.graph.security.detonationChain](../resources/security-detonationchain.md) collection|A list of all child nodes in the chain.|
|value|String|The value of the chain.|

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

