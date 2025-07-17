---
title: "implicitGrantSettings resource type"
description: "Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 03/21/2024
ms.custom: sfi-ropc-nochange
---

# implicitGrantSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. Separate properties are available to request ID and access tokens as part of the implicit flow. To enable implicit flow, at least one of the following properties must be set to true.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|enableIdTokenIssuance| Boolean | Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.|
|enableAccessTokenIssuance| Boolean | Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.implicitGrantSettings"
}-->
```json
{
  "enableIdTokenIssuance": "Boolean",
  "enableAccessTokenIssuance": "Boolean"
}

```


