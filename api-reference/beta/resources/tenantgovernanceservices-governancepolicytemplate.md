---
title: "governancePolicyTemplate resource type"
description: "Represents a policy template that defines the configuration for governance relationships."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# governancePolicyTemplate resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy template that defines the configuration for governance relationships, including delegated administration role assignments and multi-tenant applications to provision. Policy templates are used when creating [governanceRequest](tenantgovernanceservices-governancerequest.md) objects and are stored as [snapshots](tenantgovernanceservices-relationshippolicy.md) in established [governanceRelationship](tenantgovernanceservices-governancerelationship.md) objects.

The system provides a default policy template with the ID `default`. This template serves as a reusable configuration that is applied when governance relationships are automatically created for add-on tenants. The default template cannot be deleted.

Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/tenantgovernanceservices-list-governancepolicytemplates.md)|[microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) collection|Get a list of the [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) objects and their properties.|
|[Create](../api/tenantgovernanceservices-post-governancepolicytemplates.md)|[microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md)|Create a new governance policy template.|
|[Get](../api/tenantgovernanceservices-governancepolicytemplate-get.md)|[microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md)|Read the properties of a [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) object, including the system-provided default template.|
|[Update](../api/tenantgovernanceservices-governancepolicytemplate-update.md)|[microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md)|Update the properties of a governance policy template, including the system-provided default template.|
|[Delete](../api/tenantgovernanceservices-delete-governancepolicytemplates.md)|None|Delete a governance policy template.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the template was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|delegatedAdministrationRoleAssignments|[microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignment](../resources/tenantgovernanceservices-delegatedadministrationroleassignment.md) collection|A collection of delegated administration role assignments to be applied in the governed tenant when the governance relationship is established.|
|description|String|A description of the policy template.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|displayName|String|The display name of the policy template.<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|governedTenantCanTerminate|Boolean|Not implemented.|
|id|String|The unique identifier for the policy template. Is `default` for the default template. Inherited from [entity](../resources/entity.md).<br></br> Supports `$filter` (`eq`, `ne`) and `$orderBy`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the template was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|
|multiTenantApplicationsToProvision|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvision](../resources/tenantgovernanceservices-multitenantapplicationstoprovision.md) collection|A collection of multi-tenant applications to be provisioned in the governed tenant when the governance relationship is established.|
|version|String|The version of the policy template. Version count increased by 1 when updated.<br></br> Supports `$filter` (`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderBy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governancePolicyTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governancePolicyTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "governedTenantCanTerminate": "Boolean",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "version": "String",
  "multiTenantApplicationsToProvision": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvision"
    }
  ],
  "delegatedAdministrationRoleAssignments": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignment"
    }
  ]
}
```

