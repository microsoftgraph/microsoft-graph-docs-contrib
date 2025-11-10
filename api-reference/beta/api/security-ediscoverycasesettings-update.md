---
title: "Update ediscoveryCaseSettings"
description: "Update the properties of an ediscoveryCaseSettings object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# Update ediscoveryCaseSettings
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverycasesettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycasesettings-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}/settings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|caseType|[microsoft.graph.security.caseType](../resources/security-ediscoverycasesettings.md#casetype-values)|The type of the eDiscovery case. Possible values are: `standard`, `premium`, `unknownFutureValue`.|
|ocr|[microsoft.graph.security.ocrSettings](../resources/security-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the eDiscovery case. Optional.|
|redundancyDetection|[microsoft.graph.security.redundancyDetectionSettings](../resources/security-redundancydetectionsettings.md)|Redundancy (email threading and near duplicate detection) settings for an eDiscovery case. Optional.|
|reviewSetSettings|[microsoft.graph.security.reviewSetSettings](../resources/security-ediscoverycasesettings.md#reviewsetsettings-values)|The settings of the review set for the case. Possible values are: `none`, `disableGrouping`, `unknownFutureValue`.|
|topicModeling|[microsoft.graph.security.topicModelingSettings](../resources/security-topicmodelingsettings.md)|Topic modeling (Themes) settings for an eDiscovery case. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasesettings"
}
-->
```http
PATCH https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/settings
Content-Type: application/json

{
    "@odata.type": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/settings/$entity",
    "redundancyDetection": {
        "isEnabled": true,
        "similarityThreshold": 65,
        "minWords": 10,
        "maxWords": 500000
    },
    "topicModeling": {
        "isEnabled": false,
        "ignoreNumbers": true,
        "topicCount": 100,
        "dynamicallyAdjustTopicCount": true
    },
    "ocr": {
        "isEnabled": false,
        "maxImageSize": 24576,
        "timeout": "PT1M"
    },
    "caseType": "standard",
    "reviewSetSettings": "disableGrouping"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-ediscoverycasesettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-ediscoverycasesettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-ediscoverycasesettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-ediscoverycasesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-ediscoverycasesettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-ediscoverycasesettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-ediscoverycasesettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
