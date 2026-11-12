---
title: "repositoryServicePrincipal resource type"
description: "Describes the read-only **servicePrincipal** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryServicePrincipal resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the read-only **servicePrincipal** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appId|String|Application (client) id of the identity.|
|credentialsExpireDateTime|DateTimeOffset|When the identity's credentials expire.|
|servicePrincipalId|String|Object id of the service principal.|
|tenantId|String|Tenant id that owns the identity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryServicePrincipal"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryServicePrincipal",
  "servicePrincipalId": "String",
  "tenantId": "String",
  "appId": "String",
  "credentialsExpireDateTime": "String (timestamp)"
}
```
