---
title: "windowsApplication resource type"
description: "Represents settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "aricrowe57"
---

# windowsApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| packageSid | String | The package security identifier that Microsoft has assigned the application. Optional. Read-only. |
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Only available for applications that support the `PersonalMicrosoftAccount` **signInAudience**. |

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.windowsApplication"
}-->

```json
{
  "packageSid": "String",
  "redirectUris": ["String"]
}

```
