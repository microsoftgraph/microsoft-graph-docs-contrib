---
title: "dataSubject resource type"
description: "Contains information related to the subject of a content search."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# dataSubject resource type

Namespace: microsoft.graph

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
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubject",
  "email": "String",
  "firstName": "String",
  "lastName": "String",
  "residency": "String"
}
```

