---
title: "authorizationSystemIdentitySource resource type"
description: "Represents the source for an authorization system identity."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# authorizationSystemIdentitySource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source of an authorization system identity.

The following resource types inherit from this resource:

- [aadSource](../resources/aadsource.md)
- [awsSource](../resources/awssource.md)
- [azureSource](../resources/azuresource.md)
- [gsuiteSource](../resources/gsuitesource.md)
- [unknownSource](../resources/unknownsource.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identityProviderType|String|Type of identity provider. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemIdentitySource",
  "identityProviderType": "String"
}
```

