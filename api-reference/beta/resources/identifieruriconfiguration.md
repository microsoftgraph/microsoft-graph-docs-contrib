---
title: "identifierUriConfiguration resource type"
description: "identifierUriConfiguration to configure a various restrictions for identifier URIs on applications"
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identifierUriConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 Creates a restriction to block identifier URI formats on applications that could either be easily compromised or used for compromise.

## Properties
| Property                                    | Type                            | Description                 |
| :------------------------------------------ | :------------------------------ | :-------------------------- |
| nonDefaultUriAddition                       | [identifierUriRestriction](./identifierurirestriction.md)                                                    | Block new identifier URIs for apps that receive v1 tokens, unless they are the 'default' URI of the format api:<appId>.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identifierUriConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identifierUriConfiguration",
  "nonDefaultUriAddition": {
    "@odata.type": "microsoft.graph.identifierUriRestriction"
  }
}
```

