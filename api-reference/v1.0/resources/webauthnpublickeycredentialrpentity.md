---
title: "webauthnPublicKeyCredentialRpEntity resource type"
description: "Contains information about the relying party (Microsoft Entra ID) responsible for the request."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webauthnPublicKeyCredentialRpEntity resource type

Namespace: microsoft.graph

Contains information about the relying party (Microsoft Entra ID) responsible for the request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the relying party (Microsoft Entra ID) bound to the generated credential. For example, `login.microsoft.com`.|
|name|String|Human-readable identifier of the relying party. This property is always set to `Microsoft`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webauthnPublicKeyCredentialRpEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialRpEntity",
  "id": "String",
  "name": "String"
}
```

