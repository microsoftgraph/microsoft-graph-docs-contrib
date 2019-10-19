---
title: "companyDetail resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# companyDetail resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The companyDetail resource type provides a mechanism for a user to store information about companies related to entities within their profiles and contacts.

## Properties

| Property       | Type                                | Description                                 |
|:---------------|:------------------------------------|:--------------------------------------------|
|address         |[physicalAddress](physicaladdress.md)| Address of the company.                     |
|department      |String                               | Department Name within a company.           |
|displayName     |String                               | Company name.                               |
|officeLocation  |String                               | Office Location of the person referred to.  |
|pronunciation   |String                               | Pronunciation guide for the company name.   |
|webUrl          |String                               | Link to the company home page.              |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.companyDetail",
  "baseType": null
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "department": "String",
  "displayName": "String",
  "officeLocation": "String",
  "pronunciation": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "companyDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->