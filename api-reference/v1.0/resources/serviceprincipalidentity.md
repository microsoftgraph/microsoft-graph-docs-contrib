---
title: "servicePrincipalIdentity resource type"
description: "Models a service principal identity."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# servicePrincipalIdentity resource type

Namespace: microsoft.graph

Models a service principal identity.

Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application identifier of the service principal.|
|displayName|String|The display name of the service principal identity. Inherited from [identity](../resources/identity.md)|
|id|String|The identifier of the service principal identity. Inherited from [identity](../resources/identity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.servicePrincipalIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "appId": "String"
}
```
