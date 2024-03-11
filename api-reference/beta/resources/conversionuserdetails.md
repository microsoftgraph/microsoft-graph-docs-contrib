---
title: "conversionUserDetails resource type"
description: "Represents information that the API returns after a user is converted from external to internal."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# conversionUserDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information that the API returns after a user is [converted from external to internal](../api/user-convertexternaltointernalmemberuser.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|convertedToInternalDateTime|DateTimeOffset|The date and time the user was converted from external to internal.|
|displayName|String|Name displayed for the user.|
|mail|String|The SMTP address for the user.|
|userPrincipalName|String|The user principal name (UPN) of the user.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conversionUserDetails"
}
-->
{
    "@odata.type": "#microsoft.graph.conversionUserDetails",
    "displayName": "String",
    "userPrincipalName": "String",
    "convertedToInternalUserDateTime": "String (timestamp)",
    "mail": "String"
}