---
title: "passwordSingleSignOnField resource type"
description: "Fields to capture the credentials for password SSO"
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# passwordSingleSignOnField resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the fields to capture to fill the use credentials for Password-based single sign-on.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|customizedLabel|String|Title/label override for customization.|
|defaultLabel|String|Label that would be used if no customizedLabel is provided. Read only.|
|fieldId|String|Id used to identity the field type. This is an internal ID and possible values are `param_1`, `param_2`, `param_userName`, `param_password`.|
|type|String|	Type of the credential. The values can be `text`, `password`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordSingleSignOnField",
  "baseType": null
}-->

```json
{
  "customizedLabel": "String",
  "defaultLabel": "String",
  "fieldId": "String",
  "type": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordSingleSignOnField resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

