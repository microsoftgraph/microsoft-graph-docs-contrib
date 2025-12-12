---
title: "appManagementConfiguration resource type"
description: "App management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals."
author: "aricrowe57"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/11/2024
---

# appManagementConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base app management configuration object that contains properties that can be configured to enable various restrictions for applications and service principals through an [application management policy](../resources/applicationauthenticationmethodpolicy.md). This resource is an abstract type from which the following resources inherit:
- [appManagementApplicationConfiguration](../resources/appmanagementapplicationconfiguration.md) resource type
- [appManagementServicePrincipalConfiguration](../resources/appmanagementserviceprincipalconfiguration.md) resource type

## Properties

None.

## Relationships

| Relationship | Type | Description |
|:-------------|:-----|:------------|
| keyCredentials | [keyCredentialConfiguration](../resources/keycredentialconfiguration.md) collection | Collection of certificate restrictions settings to be applied to an application or service principal. |
| passwordCredentials | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection | Collection of password restrictions settings to be applied to an application or service principal. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementConfiguration"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.appManagementConfiguration",
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
    }
   ],
   "keyCredentials": [
    {
      "@odata.type": "microsoft.graph.keyCredentialConfiguration"
    }
   ]
}
```
