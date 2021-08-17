---
title: "dataSubject resource type"
description: "dataSubject type is used for passing the properties about the data subject. The properties are used for creating the query that is used for searching  the content. This is an open type which means that additional properties can be added. For example customer Id etc."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# dataSubject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information related to the subject of a content search. This resource is an open type and supports adding addition properties; for example, customer ID.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|email|String|Email of the data subject.|
|firstName|String|First name of the data subject.|
|lastName|String|Last Name of the data subject.|
|residency|String|The country/region of residency. The residency information is uesed only for internal reporting but not for the content search.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubject",
  "email": "aikchen@live.com",
  "firstName": "Aik",
  "lastName": "Chen",
  "residency": "USA",
  "SSN": "1234567890"
}
```

