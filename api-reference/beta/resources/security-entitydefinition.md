---
title: "entityDefinition resource type"
description: "Defines a single entity reference included in createAlertInput for alert creation."
author: "a-merberg"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# entityDefinition resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a single entity reference included in [createAlertInput](../resources/security-createalertinput.md) for alert creation. Each entity definition associates an entity (such as a user, device, or IP address) with the alert being created.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|entityType|[microsoft.graph.security.manualAlertEntityType](../resources/enums.md)|The type of entity to associate with the alert. The possible values are: `user`, `device`, `file`, `ip`, `url`, `cloudApplication`, `mailbox`, `securityGroup`, `azureResource`, `amazonResource`, `googleCloudResource`, `oAuthApplication`, `emailMessage`, `emailCluster`, `process`, `registryKey`, `registryValue`, `unknownFutureValue`.|
|entityIdentifier|String|The identifier kind for the selected entity type, such as `userPrincipalName`, `deviceId`, or `address`.|
|identifierValue|String|The value for the selected entity identifier.|
|role|[microsoft.graph.security.entityDefinitionInputRole](../resources/enums.md)|Whether the entity is an impacted asset or related evidence. The possible values are: `impacted`, `related`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.entityDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.entityDefinition",
  "entityType": "String",
  "entityIdentifier": "String",
  "identifierValue": "String",
  "role": "String"
}
```