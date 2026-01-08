---
title: "authenticationBehaviors resource type"
description: "Authentication behaviors provide applications flexibility in adopting breaking-change behaviors related to token issuance."
author: "medhir"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/30/2024
---

# authenticationBehaviors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the authentication behaviors set in the context of an [application](application.md). Authentication behaviors are Boolean flags that provide applications flexibility in adopting breaking-change behaviors related to token issuance. These updated token issuance behaviors can be related to security mitigations, security improvements, or feature deprecations.

Applications can adopt new breaking changes by enabling a behavior (set the behavior to `true`), or continue using preexisting behavior by disabling it (by setting the behavior to `false`). For more information about managing authentication behaviors, see [Manage application authenticationBehaviors](/graph/applications-authenticationbehaviors).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockAzureADGraphAccess|Boolean| If `false`, allows the app to have extended access to Azure AD Graph until August 31, 2025 when Azure AD Graph is fully retired. For more information on Azure AD retirement updates, see [June 2024 update on Azure AD Graph API retirement](https://techcommunity.microsoft.com/t5/microsoft-entra-blog/june-2024-update-on-azure-ad-graph-api-retirement/ba-p/4094534).|
|removeUnverifiedEmailClaim|Boolean| If `true`, removes the `email` claim from tokens sent to an application when the email address's domain can't be verified. |
|requireClientServicePrincipal|Boolean| If `true`, requires multitenant applications to have a service principal in the resource tenant as part of authorization checks before they're granted access tokens. This property is only modifiable for multitenant resource applications that rely on access from clients without a service principal and had this behavior as set to `false` by Microsoft. Tenant administrators should respond to security advisories sent through Azure Health Service events and the Microsoft 365 message center.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationBehaviors"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationBehaviors",
  "blockAzureADGraphAccess": "Boolean",
  "removeUnverifiedEmailClaim": "Boolean",
  "requireClientServicePrincipal": "Boolean"
}
```

## Related content

- [How-to: Manage application authenticationBehaviors](/graph/applications-authenticationbehaviors)
