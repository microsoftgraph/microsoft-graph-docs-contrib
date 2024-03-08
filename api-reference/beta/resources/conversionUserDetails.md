---
title: "conversionUserDetails resource type"
description: "Information retured after a user is converted from external to internal"
author: "yyuank"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# conversionUserDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information returned after a user is converted from external to internal.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Name displayed for the user|
|userPrincipalName|String|The user principal name (UPN) of the user|
|convertedToInternalDateTime|DateTimeOffset|The date and time the user was converted from external to internal|
|mail|String|The SMTP address for the user|

## JSON representation

The following is a JSON representation of the resource.

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.conversionUserDetails",
    "displayName": "Adele Vance",
    "userPrincipalName": "AdeleVance@contoso.com",
    "convertedToInternalUserDateTime": "2024-03-08T16:21:33.4491323Z",
    "mail": "AdeleV@contoso.com"
}