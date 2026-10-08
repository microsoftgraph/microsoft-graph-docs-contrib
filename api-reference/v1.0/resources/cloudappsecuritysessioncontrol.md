---
title: "cloudAppSecuritySessionControl resource type"
description: "Session control used to enforce cloud app security checks."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# cloudAppSecuritySessionControl resource type

Namespace: microsoft.graph

Session control used to enforce cloud app security checks. Inehrits from [Conditional Access Session Control](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|cloudAppSecurityType|cloudAppSecuritySessionControlType| The possible values are: `mcasConfigured`, `monitorOnly`, `blockDownloads`, `unknownFutureValue`. For more information, see [Deploy Conditional Access App Control for featured apps](/cloud-app-security/proxy-deployment-aad). |
|isEnabled     |Boolean      | Specifies whether the session control is enabled. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.cloudAppSecuritySessionControl",
  "baseType": "microsoft.graph.conditionalAccessSessionControl"
}-->

```json
{
  "isEnabled": true,
  "cloudAppSecurityType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "cloudAppSecuritySessionControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
