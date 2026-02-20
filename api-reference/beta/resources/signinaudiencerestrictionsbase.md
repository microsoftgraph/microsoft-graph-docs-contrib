---
title: "signInAudienceRestrictionsBase resource type"
description: "The base type for the signInAudienceRestrictions property of an application"
author: "psignoret"
ms.date: 11/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# signInAudienceRestrictionsBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base type for values used in an [application](application.md) resource's **signInAudienceRestrictions** property. This abstract type has two derived types that can be used:

- [unrestrictedAudience](unrestrictedaudience.md): Used to indicate that there are no restrictions to the **signInAudience** value. Single-tenant applications (`AzureADMyOrg`) can only be used in the tenant where the app is registered, and multitenant applications (`AzureADMultipleOrgs` and `AzureADandPersonalMicrosoftAccount`) can be used in *any* Microsoft Entra tenant.
- [allowedTenantsAudience](allowedtenantsaudience.md): For multitenant applications with **signInAudience** set to `AzureADMultipleOrgs`, used to indicate that the  application (representing a client app or an API) can only be used in the given list of Microsoft Entra tenants.

This type is an abstract type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|kind|kind|The kind of restrictions on what is allowed by the **signInAudience** value. The possible values are: `unrestricted`, `allowedTenants`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInAudienceRestrictionsBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInAudienceRestrictionsBase",
  "kind": "String"
}
```
