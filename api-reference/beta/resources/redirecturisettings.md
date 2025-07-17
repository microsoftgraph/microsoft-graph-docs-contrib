---
title: "redirectUriSettings resource type"
description: "Specifies the index for a redirectUri"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 04/03/2024
---

# redirectUriSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the index of the URLs where user tokens are sent for sign-in. This is only valid for applications using SAML.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| uri | String | Specifies the URI that tokens are sent to. |
|index|Int32|Identifies the specific URI within the redirectURIs collection in SAML SSO flows. Defaults to `null`. The index is unique across all the redirectUris for the application.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.redirectUriSettings"
}-->

``` json
{
  "@odata.type": "#microsoft.graph.redirectUriSettings",
  "uri": "String",
  "index": "Integer"
}
```
