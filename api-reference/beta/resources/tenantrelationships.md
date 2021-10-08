---
title: "tenantRelationships resource type"
description: "Represents how external tenants interact with your tenant."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# tenantRelationships resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how external tenants interact with your tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenantInformationByTenantId](../api/tenantinformationbytenantid-get.md)|[tenantInformation](../resources/tenantinformation.md)|Given a tenant ID, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|
|[Get tenantInformationByDomainName](../api/tenantinformationbydomainname-get.md)|[tenantInformation](../resources/tenantinformation.md)|Given a domain name, search for a tenant and read its [tenantInformation](../resources/tenantinformation.md).|

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

