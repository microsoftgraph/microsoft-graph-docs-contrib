---
title: "Update filteringProfile"
description: "Update the properties of a filteringProfile object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Update filteringProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [filteringProfile](../resources/networkaccess-filteringprofile.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/filteringProfiles/{filteringProfileId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]



|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name for the filtering profile. |
|description|String|A description for the profile. |
|state|microsoft.graph.networkaccess.status|The state of the profile. The possible values are `enabled` or `disabled`. |
|priority|Int64|The priority for determining the order in which a list of filtering profiles is applied. |




## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filteringprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}
Content-Type: application/json

{"state":"disabled"}
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

