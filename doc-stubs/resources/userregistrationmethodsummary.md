---
title: "userRegistrationMethodSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userRegistrationMethodSummary resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|**TODO: Add Description**|
|userRegistrationMethodCounts|[userRegistrationMethodCount](../resources/userregistrationmethodcount.md) collection|**TODO: Add Description**|
|userRoles|includedUserRoles|**TODO: Add Description**. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`, `unknownFutureValue`.|
|userTypes|includedUserTypes|**TODO: Add Description**. Possible values are: `all`, `member`, `guest`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationMethodSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationMethodSummary",
  "totalUserCount": "Integer",
  "userTypes": "String",
  "userRoles": "String",
  "userRegistrationMethodCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationMethodCount"
    }
  ]
}
```

