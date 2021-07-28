---
title: "Update tenantAppManagementPolicy"
description: "Update the default tenant policy that applies to applications and service principals objects."
localization_priority: Normal
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Update tenantAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tenantAppManagementPolicy](../resources/tenantAppManagementPolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                |
| :------------------------------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Policy.ReadWrite.ApplicationConfiguration |
| Delegated (personal Microsoft account) | Not supported.                                             |
| Application                            | Policy.ReadWrite.ApplicationConfiguration |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /policies/tenantAppManagementPolicy
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields from the [tenantAppManagementPolicy](../resources/tenantAppManagementPolicy.md) that should be updated. Existing properties that are not included in the request body will maintain their previous values. For best performance, do not include unchanged values in the request payload.

| Property                | Type                                                                        | Description |
|:------------------------|:----------------------------------------------------------------------------|:----------------------------------------------------|
| displayName                  | String                                                                   | The display name of the default policy. Inherited from [policyBase](../resources/policybase.md).                                |
| description                  | String                                                                   | The description of the default policy. Inherited from [policyBase](../resources/policybase.md).                                |
| isEnabled                    | Boolean                                                                  | Denotes if the policy is enabled. Default value is false.                                    |
| applicationRestrictions      | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to all application objects in the tenant.               |
| servicePrincipalRestrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to all service principal objects in the tenant. |

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.


<!-- {
  "blockType": "request",
  "name": "update_tenantAppManagementPolicy"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/policies/tenantAppManagementPolicy
Content-Type: application/json

{
    "isEnabled": true,
    "applicationRestrictions": {
        "passwordCredentials": [
            {
                "restrictionType": "passwordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2021-04-01T10:37:00Z"
            },
            {
                "restrictionType": "passwordLifetime",
                "maxLifetime": "P4DT12H30M5S",
                "restrictForAppsCreatedAfterDateTime": "2019-01-01T10:37:00Z"
            }
        ]
    }
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update tenantAppManagementPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
