---
title: "authenticationInfo resource type"
description: "An abstract base type that represents the authentication configuration used to connect to an external system."
author: "vikama-microsoft"
ms.date: 07/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# authenticationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type that represents the authentication configuration used by Microsoft Entra Entitlement Management to connect to an external system. This is an abstract type and can't be created directly. Use one of its derived types instead.

The following types are derived from authenticationInfo:

- [clientCredentialAuthenticationInfo](../resources/clientcredentialauthenticationinfo.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.authenticationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationInfo"
}
```
