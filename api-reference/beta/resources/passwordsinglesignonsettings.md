---
title: "passwordSingleSignOnSettings resource type"
description: "Settings related to password-based single sign-on"
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 05/15/2024
---

# passwordSingleSignOnSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the collection of password-based single sign-on settings.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fields|[passwordSingleSignOnField](passwordsinglesignonfield.md) collection|The fields to capture to fill the user credentials for password-based single sign-on.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordSingleSignOnSettings",
  "baseType": null
}-->

```json
{
  "fields": [{"@odata.type": "microsoft.graph.passwordSingleSignOnField"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordSingleSignOnSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

