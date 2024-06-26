---
title: "azureAssociatedIdentities resource type"
description: "A container for the different kinds of Azure identities."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# azureAssociatedIdentities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the different kinds of Azure identities.

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[azureIdentity](../resources/azureidentity.md) collection|The list of azure identities.|
|managedIdentities|[azureManagedIdentity](../resources/azuremanagedidentity.md) collection|The list of Azure managed identities.|
|servicePrincipals|[azureServicePrincipal](../resources/azureserviceprincipal.md) collection|The list of Azure service principals.|
|users|[azureUser](../resources/azureuser.md) collection|The list of Azure users.|

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

