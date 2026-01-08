---
title: "positionDetail resource type"
description: "positionDetail resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 08/20/2024
---

# positionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about positions related to entities within a user's [profile](profile.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|company|[companyDetail](companydetail.md)|Information about the company or employer.|
|description|String|A description for the position in question.|
|employeeId|String|The identifier assigned to the employee.|
|employeeType|String|The type of employment for the position.|
|endMonthYear|Date|The date when the position ended.|
|jobTitle|String|The title of the position.|
|layer|Int32|The place where the employee is within the organizational hierarchy.|
|level|String|The employee’s experience or management level.|
|role|String|The role the position entailed.|
|secondaryJobTitle|String|An optional job title for the position.|
|secondaryRole|String|An optional role for the position entailed.|
|startMonthYear|Date|The start date of the position.|
|summary|String|The summary of the position.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.positionDetail",
  "baseType": null
}-->

```json
{
  "company": {"@odata.type": "microsoft.graph.companyDetail"},
  "description": "String",
  "employeeId": "String",
  "employeeType": "String",
  "endMonthYear": "String (timestamp)",
  "jobTitle": "String",
  "layer": "Int32",
  "level": "String",
  "role": "String",
  "secondaryJobTitle": "String",
  "secondaryRole": "String",
  "startMonthYear": "String (timestamp)",
  "summary": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "positionDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

