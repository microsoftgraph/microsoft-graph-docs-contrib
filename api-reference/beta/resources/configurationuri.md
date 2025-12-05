---
title: "configurationUri resource type"
description: "Represents a URI for the single sign-on configuration of a preintegrated application."
author: "allisonAm"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/01/2024
---

# configurationUri resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a URI for the single sign-on configuration of a preintegrated application.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliesToSingleSignOnMode|String|The single sign-on mode that the URI is configured for. The possible values are: `saml`, `password`.|
|examples|String collection|The various formats that the URI should follow.|
|isRequired|Boolean|Indicates whether this URI is required for the single sign-on configuration.|
|usage|uriUsageType|Indicates how the URI is used in single sign-on. The possible values are: `redirectUri`, `identifierUri`, `loginUrl`, `logoutUrl`, `unknownFutureValue`.|
|values|String collection|The suggested values for the URI. Developers may need to customize these values for their tenant.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationUri"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationUri",
  "appliesToSingleSignOnMode": "String",
  "examples": ["String"],
  "isRequired": "Boolean",
  "usage": "String",
  "values": ["String"]
}
```

