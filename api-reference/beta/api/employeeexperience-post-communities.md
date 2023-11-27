---
title: "Create community"
description: "Create a new community in Viva Engage."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# Create community

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [community](../resources/community.md) in Viva Engage.

## Permissions

<!-- {
  "blockType": "permissions",
  "name": "employeeexperience-post-communities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-post-communities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /employeeExperience/communities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [community](../resources/community.md) object.

You can specify the following properties when you create a **community**.

|Property|Type|Description|
|:---|:---|:---|
| description | String | The description of the community. Maximum length is 1024 characters. |
| displayName | String | The name of the community. Maximum length is 255 characters. |
| privacy | [communityPrivacy](../resources/communityprivacy.md) | Defines the privacy level of the community. The possible values are: `public` or `private`. |

## Response

If successful, this method returns a `202 Accepted` response code. The response also contains an `Operation-Location` header with a link to the [engagementAsyncOperation](../resources/engagementasyncoperation.md). You can poll the `Operation-Location` endpoint for status update on the creation operation.

## Examples

### Example 1: Delegated permissions

#### Request

The following example shows a request. When the **owners** property isn't specified in the request body, the calling user is automatically assigned as the community owner.

<!-- {
  "blockType": "request",
  "name": "create_community_from_minimal_e1"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/communities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.community",
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.",
  "privacy": "public"
}
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.community"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Operation-Location: /employeeExperience/engagementOperations('3a6fdce1-c261-48bc-89de-1cfef658c0d5')
```

### Example 2: Application permissions

#### Request

The following example shows a minimal request that requires application permissions. If the **owners** property isn't specified in the request body, the request fails.

<!-- {
  "blockType": "request",
  "name": "create_community_from_app_only_e2"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/communities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.community",
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for there clients.",
  "privacy": "public",
  "owners@odata.bind": [
    "https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ]
}
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.community"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Operation-Location: /employeeExperience/engagementOperations('3a6fdce1-c261-48bc-89de-1cfef658c0d5')
```
