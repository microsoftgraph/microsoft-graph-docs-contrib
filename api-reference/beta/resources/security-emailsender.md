---
title: "emailSender resource type"
description: "Email sender common properties."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailSender resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Email sender common properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the sender.|
|domainName|String|Sender domain.|
|emailAddress|String|Sender email address.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.emailSender"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.emailSender",
  "emailAddress": "String",
  "displayName": "String",
  "domainName": "String"
}
```

