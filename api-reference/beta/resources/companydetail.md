---
title: "companyDetail resource type"
description: "companyDetail resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 08/20/2024
---

# companyDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about companies related to entities within their [profile](profile.md).

## Properties

| Property       | Type                                | Description                                            |
|:---------------|:------------------------------------|:-------------------------------------------------------|
|address         |[physicalAddress](physicaladdress.md)| Address of the company.                                |
|companyCode     |String                               | Legal entity number of the company or its subdivision. For information on how to set the value for the **companyCode**, see [profileSourceAnnotation](profilesourceannotation.md).|
|costCenter      |String                               | The cost center associated with the company or department. |
|department      |String                               | Department Name within a company.                      |
|displayName     |String                               | Company name.                                          |
|division        |String                               | The division within the company.                       |
|officeLocation  |String                               | Office Location of the person referred to.             |
|pronunciation   |String                               | Pronunciation guide for the company name.              |
|secondaryDepartment|String                            | Secondary Department Name within a company.            |
|webUrl          |String                               | Link to the company home page.                         |

## JSON representation

The following JSON representation shows the resource type.

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
  "companyCode": "String",
  "costCenter": "String",
  "department": "String",
  "displayName": "String",
  "division": "String",
  "officeLocation": "String",
  "pronunciation": "String",
  "secondaryDepartment": "String",
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

