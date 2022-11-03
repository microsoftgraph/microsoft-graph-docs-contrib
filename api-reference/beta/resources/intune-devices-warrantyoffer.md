---
title: "warrantyOffer resource type"
description: "Models and Manufactures meatadata for managed devices in the account"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# warrantyOffer resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Models and Manufactures meatadata for managed devices in the account

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|[warrantyType](../resources/intune-devices-warrantytype.md)|Warranty offer type. Possible values are: `unknown`, `manufacturer`, `contractual`, `unknownFutureValue`.|
|description|String|Warranty offer description|
|startDateTime|DateTimeOffset|Warranty offer start date|
|endDateTime|DateTimeOffset|Warranty offer end date|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.warrantyOffer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.warrantyOffer",
  "type": "String",
  "description": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```





