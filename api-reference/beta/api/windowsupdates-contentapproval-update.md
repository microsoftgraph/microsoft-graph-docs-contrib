---
title: "Update contentApproval"
description: "Update the properties of a contentApproval object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# Update contentApproval
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [contentApproval](../resources/windowsupdates-contentapproval.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges/{complianceChangeId}
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
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**.|
|isRevoked|Boolean|`True` indicates that a compliance change is revoked, preventing further application. Revoking a compliance change is a final action. Inherited from [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md).|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_contentapproval",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/983f03cd-03cd-983f-cd03-3f98cd033f98/complianceChanges/bba2a340-1e32-b5ed-186e-678e16033319
Content-Type: application/json
Content-length: 91

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "isRevoked": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-contentapproval-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-contentapproval-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-contentapproval-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-contentapproval-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-contentapproval-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-contentapproval-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "id": "bba2a340-1e32-b5ed-186e-678e16033319",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "isRevoked": true,
  "revokedDateTime": "2020-06-09T11:00:00Z",
  "updatePolicy": { "@odata.id": "updatePolicies/983f03cd-03cd-983f-cd03-3f98cd033f98" },
  "content": {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "f341705b-0b15-4ce3-aaf2-6a1681d78606"
  },
  "deploymentSettings": {
    "contentApplicability": {
      "offerWhileRecommendedBy": ["Microsoft"]
    },
    "schedule": {
      "startDateTime": "2020-06-09T10:00:00Z",
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
        "endDateTime": "2020-06-16T10:00:00Z"
      }
    }
  },
  "deployments": [
      { "id": "e481b11b-3b18-4282-906e-9d7efd27711d" }
  ]
}
```
