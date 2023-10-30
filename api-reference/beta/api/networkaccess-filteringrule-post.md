---
title: "Create filteringRule"
description: "Create new microsoft.graph.networkaccess.filteringRule object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create filteringRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create new [microsoft.graph.networkaccess.filteringRule] microsoft.graph.networkaccess.filteringRule object.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST networkaccess/filteringPolicies/{filteringPoliciesId}/policyRules
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `201 OK` response code and a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_filteringrule"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkaccess/filteringPolicies/ac253559-37a0-4f72-b666-103420b94e38/policyRules
Content-Type: application/json
{
    "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
    "name": "BlockStreaming",
    "ruleType": "webCategory",
    "destinations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.webCategory",
            "name": "StreamingMediaAndDownloads"
        }
    ]
}
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringRule"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringPolicies('ac253559-37a0-4f72-b666-103420b94e38')/policyRules/$entity",
    "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
    "id": "0d7ce7af-fbed-4751-8fed-8c184b751d0b",
    "name": "BlockStreaming",
    "ruleType": "webCategory",
    "destinations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.webCategory",
            "name": "StreamingMediaAndDownloads",
            "displayName": "Streaming Media + Music and Streaming Audio",
            "group": "HighBandwidth"
        }
    ]
}
```

