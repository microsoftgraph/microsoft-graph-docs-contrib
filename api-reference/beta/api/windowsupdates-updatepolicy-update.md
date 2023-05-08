---
title: "Update updatePolicy"
description: "Update the properties of an updatePolicy object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# Update updatePolicy
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.

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
PATCH /admin/windows/updates/updatePolicies/{updatePolicyId}
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
|complianceChangeRules|[microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md) collection|Rules for governing the automatic creation of compliance changes. Optional.|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_updatepolicy",
  "@odata.type": "microsoft.graph.windowsUpdates.updatePolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713
Content-Type: application/json
Content-length: 382

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
    "schedule": {
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
        "durationBetweenOffers": "P1D",
        "devicePerOffer": 1000
      }
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-updatepolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-updatepolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-updatepolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-updatepolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-updatepolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-updatepolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.updatePolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "id": "a7aa99c1-34a2-850c-5223-7816fde70713",
  "audience": {
    "@odata.id": "deploymentAudiences/1"
  },
  "complianceChanges": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval"
    }
  ],
  "complianceChangeRules": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
      "contentFilter": {
          "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
      },
      "durationBeforeDeploymentStart": "P7D",
      "createdDateTime": "2020-06-09T10:00:00Z",
      "lastEvaluatedDateTime": "2020-06-09T10:00:00Z",
      "lastModifiedDateTime": "2020-06-09T10:00:00Z"
    }
  ],
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
    "schedule": {
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
        "durationBetweenOffers": "P1D",
        "devicePerOffer": 1000
      }
    }
  }
}
```
