---
title: "multiTenantApplicationsToProvisionSnapshot resource type"
description: "Represents a snapshot of a multi-tenant application configuration stored in a governance relationship or request."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationsToProvisionSnapshot resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of a multi-tenant application configuration that was captured when a [governance relationship](../resources/tenantgovernanceservices-governancerelationship.md) or [request](../resources/tenantgovernanceservices-governancerequest.md) was created. This preserves the application configuration as it was defined at that point in time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The **appId** (client ID) of the multi-tenant application.|
|displayName|String|The display name of the application.|
|objectId|String|The object ID of the service principal in the governing tenant.|
|requiredResourceAccesses|[microsoft.graph.tenantGovernanceServices.requiredResourceAccess](../resources/tenantgovernanceservices-requiredresourceaccess.md) collection|The collection of resource accesses (permissions) required by the application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvisionSnapshot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvisionSnapshot",
  "appId": "String",
  "objectId": "String",
  "displayName": "String",
  "requiredResourceAccesses": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.requiredResourceAccess"
    }
  ]
}
```
