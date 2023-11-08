---
title: "azureAssociatedIdentities resource type"
description: "Container to represent different kinds of azure identities"
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container to represent different kinds of azure identities

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[azureIdentity](../resources/azureidentity.md) collection|Get the list of azure identities.|
|managedIdentities|[azureManagedIdentity](../resources/azuremanagedidentity.md) collection|Get the list of azure managed identities.|
|servicePrincipals|[azureServicePrincipal](../resources/azureserviceprincipal.md) collection|Get the list of azure service principals.|
|users|[azureUser](../resources/azureuser.md) collection|Get the list of azure users.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAssociatedIdentities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAssociatedIdentities"
}
```

