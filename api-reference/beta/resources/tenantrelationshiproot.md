---
title: "tenantRelationshipRoot resource type"
description: "**TODO: Add Description**"
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# tenantRelationshipRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenantInformationByTenantId](../api/tenantinformationbytenantid-get.md)|[tenantInformation](../resources/tenantinformation.md)|Given a tenant ID, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|
|[Get tenantInformationByDomainName](../api/tenantinformationbydomainname-get.md)|[tenantInformation](../resources/tenantinformation.md)|Given an exact-match domain name, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|multiTenantCollaboration|[multiTenantCollaboration](../resources/multitenantcollaboration.md)|**TODO: Add Description**|
|multiTenantCollaborationAdmissions|[multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationshipRoot"
}
```

