---
title: "tenantRelationshipRoot resource type"
description: "Resource that exposes methods to retrieve basic identification information about Azure AD tenants."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# tenantRelationshipRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that exposes methods to retrieve basic identification information about Azure AD tenants. The information is exposed through the [tenantInformation](tenantinformation.md) resource and includes the tenant's domain name and unique ID.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[findTenantInformationByTenantId](../api/tenantrelationships-findtenantinformationbytenantid.md)|[tenantInformation](../resources/tenantinformation.md)|Given a tenant ID, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|
|[findTenantInformationByDomainName](../api/tenantrelationships-findtenantinformationbydomainname.md)|[tenantInformation](../resources/tenantinformation.md)|Given a domain name, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|

## Properties
None.

## Relationships
None.

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

