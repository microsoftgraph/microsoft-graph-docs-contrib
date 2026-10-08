---
title: "connectionInfo resource type"
description: "The connectionInfo object defines the connection information that is used to communicate with a resource."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# connectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connectionInfo object defines the resource locator that is used to communicate with a resource in Microsoft Entra Entitlement Management.

The following types are derived from connectionInfo:

- [externalSapAcConnectionInfo](../resources/externalsapacconnectioninfo.md)
- [externalTokenBasedSapIagConnectionInfo](../resources/externaltokenbasedsapiagconnectioninfo.md)

In entitlement management, this object is configured in the following properties and relationships:
- **connectionInfo** property of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)
- **connectionInfo** property of [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The endpoint that is used by Entitlement Management to communicate with the access package resource.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
