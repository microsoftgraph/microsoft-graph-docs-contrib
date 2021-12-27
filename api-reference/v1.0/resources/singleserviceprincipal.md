---
title: "singleServicePrincipal complex type"
description: "Identifies a service principal in the tenant who will be allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# singleServicePrincipal complex type

Namespace: microsoft.graph

Used in the request, approval, and assignment review settings of an access package assignment policy. The  `@odata.type` value `#microsoft.graph.singleServicePrincipal` indicates that this [subjectSet](../resources/subjectset.md) identifies a specific service principal in the tenant who will be allowed as a requestor, approver, or reviewer.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of this service principal.|
|servicePrincipalId|String|ID of the [servicePrincipal](serviceprincipal.md).|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleServicePrincipal",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleServicePrincipal",
  "servicePrincipalId": "String",
  "description": "String"
}
```



