---
title: "riskyServicePrincipalHistoryItem resource type"
description: "Represents the risk history of Azure AD service principals"
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskyServicePrincipalHistoryItem resource type

Namespace: microsoft.graph

Represents the risk history of an Azure AD service principal as determined by Azure AD Identity Protection. Inherits from [riskyServicePrincipal](riskyserviceprincipal.md).

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List history](../api/riskyserviceprincipal-list-history.md) | [riskyServicePrincipalHistoryItem](riskyserviceprincipalhistoryitem.md) collection|Get the risk history of an Azure AD service principal.|


## Properties

| Property       | Type    | Description |
|:---------------|:--------|:------------|
| activity       | [riskServicePrincipalActivity](riskserviceprincipalactivity.md)| The activity related to service principal risk level change. | 
| initiatedBy    | bool    | The identifier of the actor of the operation. |
| servicePrincipalId         | string  | The identifier of the service principal. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskyServicePrincipalHistoryItem",
  "baseType": "microsoft.graph.riskyServicePrincipal"
}-->

```json
{
    "servicePrincipalId": "String",
    "initiatedBy": "String",
    "activity": {"@odata.type": "microsoft.graph.riskServicePrincipalActivity"}
}
```


<!--
{
  "type": "#page.annotation",
  "description": "riskyServicePrincipalHistoryItem resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
   
  ]
}
-->
