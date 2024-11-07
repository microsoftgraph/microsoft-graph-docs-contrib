---
title: "azureActiveDirectoryTenant resource type"
description: "The azureActiveDirectoryTenant type identifies another Microsoft Entra tenant as an identity source for a connected organization."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# azureActiveDirectoryTenant resource type

Namespace: microsoft.graph


Used in the identity sources of an [connectedOrganization](connectedOrganization.md). The `@odata.type` value `#microsoft.graph.azureActiveDirectoryTenant` indicates that this type identifies another Microsoft Entra tenant as an identity source for a connected organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the Microsoft Entra tenant. Read only. |
|tenantId|String|The ID of the Microsoft Entra tenant. Read only. |

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureActiveDirectoryTenant",
  "baseType": "microsoft.graph.identitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureActiveDirectoryTenant",
  "displayName": "String",
  "tenantId": "String"
}
```
