---
title: "externalOriginResourceConnector resource type"
description: "Represents a connector used to communicate with external resource systems."
author: "vikama-microsoft"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# externalOriginResourceConnector resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a connector used to communicate with external resource systems in Microsoft Entra ID Governance. The connector facilitates integration with external applications such as SAP systems, enabling access management and governance capabilities.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-externaloriginresourceconnectors.md)|[externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) collection|Get a list of the [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) objects and their properties.|
|[Create](../api/entitlementmanagement-post-externaloriginresourceconnectors.md)|[externalOriginResourceConnector](../resources/externaloriginresourceconnector.md)|Create a new [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.|
|[Get](../api/externaloriginresourceconnector-get.md)|[externalOriginResourceConnector](../resources/externaloriginresourceconnector.md)|Read the properties and relationships of an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.|
|[Update](../api/externaloriginresourceconnector-update.md)|[externalOriginResourceConnector](../resources/externaloriginresourceconnector.md)|Update the properties of an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.|
|[Delete](../api/externaloriginresourceconnector-delete.md)|None|Delete an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|The connection information used to communicate with the external resource system. When **connectorType** is `sapIag`, the type is [externalTokenBasedSapIagConnectionInfo](../resources/externaltokenbasedsapiagconnectioninfo.md).|
|connectorType|connectorType|The type of connector to SAP being used. The possible values are: `sapIag` (SAP Cloud Identity Access Governance), `sapAc` (SAP Augmented Access Control), `unknownFutureValue`. |
|createdBy|String|The identifier of the user or application that created the connector.|
|createdDateTime|DateTimeOffset|The date and time when the connector was created.|
|description|String|A description of the connector.|
|displayName|String|The display name of the connector.|
|id|String|The unique identifier of the connector. Inherited from [entity](../resources/entity.md).|
|modifiedBy|String|The identifier of the user or application that last modified the connector.|
|modifiedDateTime|DateTimeOffset|The date and time when the connector was last modified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalOriginResourceConnector",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "connectorType": "String",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.connectionInfo"
  },
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)"
}
```

