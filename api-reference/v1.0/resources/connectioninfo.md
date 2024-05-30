---
title: "connectionInfo resource type"
description: "The connectionInfo object defines the connection information that is used to communicate with a resource."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# connectionInfo resource type

Namespace: microsoft.graph


The connectionInfo object defines the resource locator that is used to communicate with a resource in Microsoft Entra Entitlement Management.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The endpoint that is used by Entitlement Management to communicate with the access package resource.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectionInfo",
  "url": "String"
}
```
