---
title: "List filteringRules"
description: "Get a list of the microsoft.graph.networkaccess.filteringRule objects and their properties."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# List filteringRules
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.Read.All,NetworkAccess.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|NetworkAccess.Read.All,NetworkAccess.ReadWrite.All|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkaccess/filteringPolicies/{filteringPolicyId}?$expand=policyRules
```

## Optional query parameters
This method supports `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringRule](../resources/networkaccess-filteringrule.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/filteringPolicies/d0187e08-04cc-41b4-9a47-dd640e804280?$expand=policyRules
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringRule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringPolicies(policyRules())/$entity",
            "id": "d0187e08-04cc-41b4-9a47-dd640e804280",
            "name": "Block Social",
            "description": "Block Social",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-10-29T11:33:55Z",
            "createdDateTime": "2023-10-29T11:33:55Z",
            "action": "block",
            "policyRules@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringPolicies('d0187e08-04cc-41b4-9a47-dd640e804280')/policyRules",
            "policyRules": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
                    "id": "36ce876d-16aa-4059-83db-9deab5adeb68",
                    "name": "Block Social",
                    "ruleType": "webCategory",
                    "destinations": [
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.webCategory",
                            "name": "SocialNetworking",
                            "displayName": "Social Networks in General + Facebook + Facebook: Posting + Facebook: Commenting + Facebook: Friends + Facebook: Photo Upload + Facebook: Events + Facebook: Apps + Facebook: Chat + Facebook: Questions + Facebook: Video Upload + Facebook: Groups + Facebook: Games + Twitter + Twitter: Posting + Twitter: Mail + Twitter: Follow + Youtube + Youtube: Commenting + Youtube: Video Upload + Youtube: Sharing + Instagram + Instagram: Upload + Instagram: Commenting + Instagram: Private Message + Tumblr + Tumblr: Posting + Tumblr: Commenting + Tumblr: Photo or Video Upload + Google+ + Google+: Posting + Google+: Commenting + Google+: Photo Upload + Google+: Video Upload + Google+: Video Chat + Pinterest + Pinterest: Pin + Pinterest: Commenting + Ask.fm + Ask.fm: Ask + Ask.fm: Answer + Wordpress + Wordpress: Posting + Wordpress: Upload + TikTok",
                            "group": "Productivity"
                        }
                    ]
                }
            ]
        }
    ]
}

```

