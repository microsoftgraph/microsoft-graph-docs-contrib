---
title: "Create filteringPolicy"
description: "Create a new filteringPolicy."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create filteringPolicy
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported|
|Application|NetworkAccess.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/filteringPolicies/{filteringPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.

You can specify the following properties when creating a **filteringPolicy**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Optional.|
|version|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_filteringpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/filteringPolicies
Content-Type: application/json

{
	"name": "Policy",
	"policyRules": [],
	"description": "Catch All",
	"@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicy"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringPolicies/$entity",
    "id": "43578c89-1458-44fc-8767-dffd38bcc3fc",
    "name": "Policy",
    "description": "Catch All",
    "version": "1.0.0",
    "lastModifiedDateTime": "2023-05-23T10:53:06Z",
    "createdDateTime": "2023-05-23T10:53:06Z"
}
```


