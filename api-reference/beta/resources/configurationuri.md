---
title: "configurationUri resource type"
description: "The uri's required for pre-integrated application's SSO. Developers will need to configure these url's for the application in Azure AD by either using the provided values or following the examples that are given, if there are any."
author: "allisonAm"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# configurationUri resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesToSingleSignOnMode|String|The single sign-on mode that the uri will be configured for. Possible values are 'saml' and 'password.|
|examples|String collection|The various formats that the uri should follow|
|isRequired|Boolean|Whether this uri is required in the single sign-on configuration.|
|usage|uriUsageType|How the uri is used in single sign-on. The possible values are: `redirectUri`, `identifierUri`, `loginUrl`, `logoutUrl`, `unknownFutureValue`.|
|values|String collection|The suggested values for the uri. Developers may need to customize these values for their tenant.|

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
  "values": [
    "String"
  ],
  "examples": [
    "String"
  ],
  "usage": "String",
  "isRequired": "Boolean",
  "appliesToSingleSignOnMode": "String"
}
```

