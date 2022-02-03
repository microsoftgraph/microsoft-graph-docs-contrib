---
title: "windowsApplication resource type"
description: "Specifies settings for a Windows application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "aricrowe57"
---

# webApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| packageSid | String | The package security identifier for the application that is assigned by Microsoft, if applicable. |
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Only available for applications that exclusively sign in personal Microsoft accounts (signInAudience = PersonalMicrosoftAccounts) |

## JSON representation
Here is a JSON representation of the resource.

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