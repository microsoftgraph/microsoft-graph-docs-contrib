---
title: "profileCardAnnotation resource type"
description: "Allows an administrator to customize the appearance of selected fields in the Microsoft 365 profile card."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardAnnotation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to set a custom display name for fields that surface in a shared Microsoft 365 people experieence. An administrator can define a default display name string and a set of alternative translations for the languages that they support in their organization.

## Properties

| Property     | Type                                                            | Description                                                                                                                       |
|:-------------|:----------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|
|displayName   |String                                                           | If present, the value of this field is used by the profile card as the default property label in the experience (for example, Cost Center). |
|localizations |[displayNameLocalization](displaynamelocalization.md) collection | If present, the localized value for a given language will be used as the default property label in the experience (for example, a user with a no-NB client will receive "Kostnads Senter" as their label, rather than "Cost Center".)|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileCardAnnotation",
  "baseType": null
}-->

```json
{
  "displayName": "String",
  "localizations": [
    {
      "displayName": "String",
      "languageTag": "String"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profileCardAnnotation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
