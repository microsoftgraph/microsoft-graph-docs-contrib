---
title: "entityDefinitionInput resource type"
description: "Represents an entity definition input for manual alert creation in Microsoft 365 Defender."
author: "a-merberg"
ms.date: 05/18/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# entityDefinitionInput resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity definition input for manual alert creation. Each entity definition specifies a security entity (such as a user, device, or IP address) associated with the alert, along with its identifier and role in the alert context. Used in the **entityDefinitions** property of [manualAlert](../resources/security-manualalert.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entityIdentifier|String|The type of identifier used for the entity. The supported identifiers depend on the **entityType**. See [supported entity identifiers](#supported-entity-identifiers).|
|entityType|microsoft.graph.security.manualAlertEntityType|The type of entity. The possible values are: `user`, `device`, `file`, `ip`, `url`, `cloudApplication`, `mailbox`, `securityGroup`, `azureResource`, `amazonResource`, `googleCloudResource`, `oAuthApplication`, `emailMessage`, `emailCluster`, `process`, `registryKey`, `registryValue`, `unknownFutureValue`.|
|identifierValue|String|The actual identifier value for the entity (for example, `john@contoso.com` for a user, or `192.168.1.1` for an IP address). Maximum 1000 characters.|
|role|microsoft.graph.security.entityDefinitionInputRole|The role of the entity in the alert context. The possible values are: `impacted`, `related`, `unknownFutureValue`.|

### Supported entity identifiers

The following table lists the supported **entityIdentifier** values for each **entityType**.

|Entity type|Supported identifiers|
|:---|:---|
|user|`userPrincipalName`, `aadUserId`, `sid`|
|device|`deviceId`, `deviceName`|
|file|`sha256`, `sha1`|
|ip|`address`|
|url|`url`|
|cloudApplication|`appId`, `name`|
|mailbox|`mailboxPrimaryAddress`|
|securityGroup|`distinguishedName`, `objectGuid`, `sid`|
|azureResource|`resourceId`|
|amazonResource|`amazonResourceId`|
|googleCloudResource|`fullResourceName`|
|oAuthApplication|`oAuthAppId`|
|emailMessage|`networkMessageId`|
|emailCluster|`networkMessageId`|
|process|`sha1`, `sha256`|
|registryKey|`key`|
|registryValue|`key`, `valueName`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.entityDefinitionInput",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.entityDefinitionInput",
  "entityType": "String",
  "entityIdentifier": "String",
  "identifierValue": "String",
  "role": "String"
}
```

