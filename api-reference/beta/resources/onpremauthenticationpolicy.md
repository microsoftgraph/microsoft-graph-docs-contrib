---
title: "onPremAuthenticationPolicy resource type"
description: "Represents the policy to specify the characteristics to support PTA and SSO for hybrid identity scenarios."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 08/15/2025
---

# onPremAuthenticationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy to specify the characteristics to support Pass-through Authentication (PTA) and Seamless Single Sign-On (SSO) for hybrid identity scenarios.

Inherits from [stsPolicy](stsPolicy.md).

## Methods

| Method                                                | Return Type                                                 | Description                                                                |
| :---------------------------------------------------- | :---------------------------------------------------------- | :------------------------------------------------------------------------- |
| [Create](../api/onpremauthenticationpolicy-create.md) | [onPremAuthenticationPolicy](onpremauthenticationpolicy.md) | Create an onPremAuthenticationPolicy object.                               |
| [Get](../api/onpremauthenticationpolicy-get.md)       | [onPremAuthenticationPolicy](onpremauthenticationpolicy.md) | Read properties and relationships of an onPremAuthenticationPolicy object. |
| [List](../api/onpremauthenticationpolicy-list.md)     | [onPremAuthenticationPolicy](onpremauthenticationpolicy.md) | Read properties and relationships of onPremAuthenticationPolicy objects.   |
| [Update](../api/onpremauthenticationpolicy-update.md) | None                                                        | Update an onPremAuthenticationPolicy object.                               |
| [Delete](../api/onpremauthenticationpolicy-delete.md) | None                                                        | Delete an onPremAuthenticationPolicy object.                               |

## Properties

| Property              | Type              | Description                                                                                                                                                                     |
| :-------------------- | :---------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| id                    | String            | Unique identifier for this policy. Read-only.                                                                                                                                   |
| definition            | String collection | A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required. |
| description           | String            | Description for this policy.                                                                                                                                                    |
| displayName           | String            | Display name for this policy. Required.                                                                                                                                         |
| isOrganizationDefault | Boolean           | Ignore this property. The onPremAuthentication policy can only be applied to service principals and can't be set globally for the organization.                                 |

### Properties of an onPremAuthentication policy definition

The properties form the JSON object that represents an onPremAuthentication policy. This JSON object must be **converted to a string with quotations escaped** to be inserted into the **definition** property. The following is an example in JSON format:

<!-- {
  "blockType": "ignored"
}-->

```json
"definition": [
  "{\"OnPremAuthenticationFlowPolicy\": {\"Version\": 2, \"PassthroughAuth\": {\"Enabled\": true, \"ScaleUnit\": \"Test\" }, \"DesktopSSO\": {\"Enabled\": true, \"Secrets\": [{\"Machine\": \"AZUREADSSOACC\", \"Domain\": \"onpremvalidation.onmicrosoft.com\", \"KeyIdentifiers\": [\"...\"]}]}}}"
]
```

| Property        | Type    | Description                                                                                                                     |
| :-------------- | :------ | :------------------------------------------------------------------------------------------------------------------------------ |
| PassthroughAuth | String  | Enables users to authenticate directly against on-premises Active Directory without syncing passwords to the cloud.             |
| DesktopSSO      | String  | Allows seamless single sign-on for domain-joined devices, enabling users to sign in automatically without entering credentials. |
| Version         | Integer | The schema version of the policy configuration. Required.                                                                       |

## Relationships

| Relationship | Type                                             | Description                                                                                           |
| :----------- | :----------------------------------------------- | :---------------------------------------------------------------------------------------------------- |
| appliesTo    | [directoryObject](directoryobject.md) collection | The [directoryObject](directoryObject.md) collection that this policy has been applied to. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy",
  "keyProperty": "id"
}-->

```json
{
  "definition": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isOrganizationDefault": true
}
```

<!-- uuid: 35c6eb79-08c2-43ce-b897-949d56d54c5e
2025-08-15 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremAuthenticationPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
