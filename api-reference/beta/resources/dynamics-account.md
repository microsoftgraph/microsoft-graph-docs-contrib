---
title: "accounts resource type"
description: "Represents an account object in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ''
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# accounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an account object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get accounts](../api/dynamics-account-get.md)|accounts|Get accounts object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|blocked|Boolean|Specifies that entries cannot be posted to the G/L account. `True` indicates that the account is blocked and posting is not allowed.|
|category|String|Specifies the category of the G/L account. Maximum size is 20.|
|displayName|String|Specifies the name of the G/L account. Maximum size is 50.|
|id|GUID|The unique identifier for the account.|
|lastModifiedDateTime|Datetime|The date and time when the account was last modified.|
|number|String |Specifies the number of the G/L account. Maximum size is 20.|
|subCategory|String|Specifies the subcategory of the account category of the G/L account. Maximum size is 80.|

## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.


```json
{
  "blocked": "Boolean",  
  "category": "String",
  "displayName": "String",
  "id": "GUID",
  "lastModifiedDateTime": "Datetime"
  "number": "String",
  "subCategory": "String"
}
```


