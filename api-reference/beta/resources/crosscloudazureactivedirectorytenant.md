---
title: "crossCloudAzureActiveDirectoryTenant resource type"
description: "The crossCloudAzureActiveDirectoryTenant type identifies another Azure Active Directory tenant in a different cloud as an identity source for a connected organization."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# crossCloudAzureActiveDirectoryTenant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the identity sources of a [connectedOrganization](connectedOrganization.md) object. The `@odata.type` value `#microsoft.graph.crossCloudAzureActiveDirectoryTenant` indicates that this type identifies another Azure AD tenant in a different cloud as an identity source for a connected organization.


## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| cloudInstance | String | The ID of the cloud where the tenant is located, one of `microsoftonline.com`, `microsoftonline.us` or `partner.microsoftonline.cn`. Read only. |
| displayName |String | The name of the Azure Active Directory tenant. Read only. |
| tenantId |String | The ID of the Azure Active Directory tenant. Read only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.crossCloudAzureActiveDirectoryTenant",
  "baseType": "microsoft.graph.identitySource"
}-->

```json
{
  "tenantId": "String (identifier)",
  "displayName": "String",
  "cloudInstance": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "crossCloudAzureActiveDirectoryTenant resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


