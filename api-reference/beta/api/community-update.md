---
title: "Update community"
description: "Update the properties of a community object."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# Update community

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an existing Viva Engage [community](../resources/community.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "community-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/community-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /employeeExperience/communities/{communityId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
| description | String | The description of the community. Maximum length is 1024 characters. |
| displayName | String | The name of the community. Maximum length is 255 characters. |
| privacy | [communityPrivacy](../resources/community.md#communityprivacy-values) | Defines the privacy level of the community. The possible values are: `public`, `private`, `unknownFutureValue`. |


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_community"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0
Content-Type: application/json

{
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
  "privacy": "public"
}
```

### Response

The following is an example of the response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
-->
``` http
HTTP/1.1 204 No Content
```