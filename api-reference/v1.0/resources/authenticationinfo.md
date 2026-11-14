---
title: "authenticationInfo resource type"
description: "Represents the authentication configuration used to connect to an external system."
author: "vikama-microsoft"
ms.date: 11/06/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# authenticationInfo resource type

Namespace: microsoft.graph

Represents an abstract base type for the authentication configuration used by Microsoft Entra Entitlement Management to connect to an external system. This is an abstract type and can't be created directly. Use one of its derived types instead.

The **authenticationInfo** property of [externalSapAcConnectionInfo](../resources/externalsapacconnectioninfo.md) uses this type.

The following types are derived from authenticationInfo:

- [clientCredentialAuthenticationInfo](../resources/clientcredentialauthenticationinfo.md)

## Methods

None.

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
