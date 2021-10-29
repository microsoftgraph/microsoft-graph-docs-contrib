---
title: "teamworkNetworkConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkNetworkConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultGateway|String|**TODO: Add Description**|
|domainName|String|**TODO: Add Description**|
|hostName|String|**TODO: Add Description**|
|ipAddress|String|**TODO: Add Description**|
|isDhcpEnabled|Boolean|**TODO: Add Description**|
|isPCPortEnabled|Boolean|**TODO: Add Description**|
|primaryDns|String|**TODO: Add Description**|
|secondaryDns|String|**TODO: Add Description**|
|subnetMask|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkNetworkConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkNetworkConfiguration",
  "isDhcpEnabled": "Boolean",
  "hostName": "String",
  "domainName": "String",
  "ipAddress": "String",
  "subnetMask": "String",
  "defaultGateway": "String",
  "primaryDns": "String",
  "secondaryDns": "String",
  "isPCPortEnabled": "Boolean"
}
```

