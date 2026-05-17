---
title: "requiredResourceAccess resource type"
description: "Represents the permissions required by an application to access a specific resource."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# requiredResourceAccess resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the permissions required by an application to access a specific resource. This is used when [defining multi-tenant applications to provision in governed tenants](../resources/tenantgovernanceservices-multitenantapplicationstoprovisionsnapshot.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissions|[microsoft.graph.tenantGovernanceServices.resourcePermission](../resources/tenantgovernanceservices-resourcepermission.md) collection|The collection of resource permissions required by the application.|
|resourceAppId|String|The **appId** (client ID) of the resource that the application needs to access.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.requiredResourceAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.requiredResourceAccess",
  "resourceAppId": "String",
  "permissions": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.resourcePermission"
    }
  ]
}
```
