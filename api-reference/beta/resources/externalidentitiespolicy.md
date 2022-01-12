---
title: "externalIdentitiesPolicy resource type"
description: "Resources for External Identities Policy"
author: "KuiGithui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# externalIdentitiesPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gives tenant administrator control over external identities by allowing or restricting external identities to leave an organization via self-service controls. When permitted by the administrator, external identities will have access to self-service controls via the My Account portal.

Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get externalIdentitiesPolicy](../api/externalidentitiespolicy-get.md)|[externalIdentitiesPolicy](../resources/externalidentitiespolicy.md)|Read the properties and relationships of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.|
|[Update externalIdentitiesPolicy](../api/externalidentitiespolicy-update.md)|[externalIdentitiesPolicy](../resources/externalidentitiespolicy.md)|Update the properties of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowDeletedIdentitiesDataRemoval|Boolean|The setting will inform AAD that cleanup of the external identities user information stored within the local tenant should be deleted (or not) when the user is deleted in their home directory.|
|allowExternalIdentitiesToLeave|Boolean|The setting will inform AAD whether allow or restrict external identities to leave the tenant.If set to false, self service is not enabled, and therefore admin will need to manually perform the clean up.|
|displayName|String|Contains string data for policy display information. Inherited from [policyBase](../resources/policybase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalIdentitiesPolicy",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->
``` json
{
"id": "String (identifier)",
"deletedDateTime":null,
"allowExternalIdentitiesToLeave": true,
"allowDeletedIdentitiesDataRemoval": false,
"displayName": "String"
}
```

