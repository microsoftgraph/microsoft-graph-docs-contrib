<<<<<<< HEAD
<<<<<<< HEAD
---
title: "ediscoverySearch: export report"
description: "Initiate an export from a search."
author: "Himadri"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: export report
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export report from a **search**.  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportReport
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter | Type | Description |
| --- | --- | --- |
| displayName | Edm.String | The display name of the export result. |
| description | Edm.String | The description of the export result. |
| exportCriteria | microsoft.graph.security.exportCriteria | The criteria for selecting the content to be exported. |
| exportLocation | microsoft.graph.security.exportLocation | The location where the exported content will be stored. |
| additionalOptions | microsoft.graph.security.additionalOptions | The additional options for customizing the export result. |
| exportFormat | microsoft.graph.security.exportFormat | The format of the exported content. |
| exportSingleItems | Edm.Boolean | A flag indicating whether to export single items or conversation threads. |

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [Search Export operation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export.

## Examples

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.export"
}
-->
``` http
 POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('2eef613a-ca2d-42f4-89fe-84d5198ddedf')/searches('6b5358b0-2ce2-4369-b9cf-65392fe56807')/exportResult
  {
        "displayName" :"Test Export",
        "exportCriteria" : "partiallyIndexed",
        "exportLocation" : "nonresponsiveLocations, responsiveLocations"
        "exportFormat": "pst",
        "additionalOptions": "teamsAndYammerConversations | cloudAttachments",
        "exportSingleItems":"true"
    }
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetthisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/ediscoveryreviewsetthisexport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetthisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetthisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetthisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetthisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewsetthisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewsetthisexport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

=======
---
title: "ediscoverySearch: export report"
description: "Initiate an export from a search."
author: "himadrinayak"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: export report
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export report from a **search**.  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportReport
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter | Type | Description |
| --- | --- | --- |
| displayName | Edm.String | The display name of the export result. |
| description | Edm.String | The description of the export result. |
| exportCriteria | microsoft.graph.security.exportCriteria | The criteria for selecting the content to be exported. |
| exportLocation | microsoft.graph.security.exportLocation | The location where the exported content will be stored. |
| additionalOptions | microsoft.graph.security.additionalOptions | The additional options for customizing the export result. |
| exportFormat | microsoft.graph.security.exportFormat | The format of the exported content. |
| exportSingleItems | Edm.Boolean | A flag indicating whether to export single items or conversation threads. |

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [Search Export operation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export.

## Examples

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.export"
}
-->
``` http
 POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('2eef613a-ca2d-42f4-89fe-84d5198ddedf')/searches('6b5358b0-2ce2-4369-b9cf-65392fe56807')/exportResult
  {
        "displayName" :"Test Export",
        "exportCriteria" : "partiallyIndexed",
        "exportLocation" : "nonresponsiveLocations, responsiveLocations"
        "exportFormat": "pst",
        "additionalOptions": "teamsAndYammerConversations | cloudAttachments",
        "exportSingleItems":"true"
    }
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetthisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/ediscoveryreviewsetthisexport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetthisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetthisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetthisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetthisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewsetthisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewsetthisexport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

>>>>>>> 4669ada7f6e (correct author  name)
=======
---
title: "ediscoverySearch: export report"
description: "Initiate an export from a search."
author: "himadrinayak"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearch: export report
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Initiate an export report from a **search**.  For details, see [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/exportReport
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter | Type | Description |
| --- | --- | --- |
| displayName | Edm.String | The display name of the export result. |
| description | Edm.String | The description of the export result. |
| exportCriteria | microsoft.graph.security.exportCriteria | The criteria for selecting the content to be exported. |
| exportLocation | microsoft.graph.security.exportLocation | The locations to be included in the export. |
| additionalOptions | microsoft.graph.security.additionalOptions | The additional options for customizing the export result. |
| exportFormat | microsoft.graph.security.exportFormat | The format of the exported content. |
| exportSingleItems | Edm.Boolean | A flag indicating whether to export single items or not. |

## Response

If the export has started successfully, this action returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [Search Export operation](../resources/security-ediscoverysearchexportoperation.md) that was created to handle the export.

## Examples

### Request
Here's an example  of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetthis.export"
}
-->
``` http
 POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases('2eef613a-ca2d-42f4-89fe-84d5198ddedf')/searches('6b5358b0-2ce2-4369-b9cf-65392fe56807')/exportResult
  {
        "displayName" :"Test Export",
        "exportCriteria" : "partiallyIndexed",
        "exportLocation" : "nonresponsiveLocations, responsiveLocations"
        "exportFormat": "pst",
        "additionalOptions": "teamsAndYammerConversations | cloudAttachments",
        "exportSingleItems":"true"
    }
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewsetthisexport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/ediscoveryreviewsetthisexport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewsetthisexport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewsetthisexport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewsetthisexport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewsetthisexport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewsetthisexport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewsetthisexport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

>>>>>>> 5797296f705 (fix description)
