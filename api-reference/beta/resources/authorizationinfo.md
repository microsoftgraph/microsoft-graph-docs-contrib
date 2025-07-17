---
title: "authorizationInfo resource type"
description: "Represents the identifiers that can be used to identify and authenticate a user in non-Azure AD environments."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authorizationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identifiers that can be used to identify and authenticate a user in non-Azure AD environments. Common uses include storing identifiers for smartcard-based certificates that a user uses for access to on-premises Active Directory deployments or for federated access, and storing the Subject Alternate Name (SAN) that's associated with a Common Access Card (CAC).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateUserIds|String collection|The collection of unique identifiers that can be associated with a user and can be used to bind the Microsoft Entra user to a certificate for authentication and authorization into non-Azure AD environments. The identifiers must be unique in the tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationInfo",
  "certificateUserIds": [
    "String"
  ]
}
```
