---
title: "Create ediscoveryCase"
description: "Create a new eDiscovery case."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Create ediscoveryCase
Namespace: microsoft.graph.security



Create a new [ediscoveryCase](../resources/security-ediscoverycase.md) object.

>[!NOTE]
> This API only creates an eDiscovery (Premium) case using the new case format. To learn more about the new case format in eDiscovery, see [Use the new case format in eDiscovery (Premium)](/microsoft-365/compliance/advanced-ediscovery-new-case-format).
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
POST /security/cases/ediscoveryCases
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryCase](../resources/security-ediscoverycase.md) object.

You can specify the following properties when you create an **ediscoveryCase**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the eDiscovery case. Required.|
|description|String|The case description. Optional.|
|externalId|String|The external case number for customer reference. Optional.|

## Response

If successful, this method returns a `201 Created` response code and an [microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ediscoverycase_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases
Content-Type: application/json

{
    "displayName": "CONTOSO LITIGATION-005",
    "description": "Project Bazooka",
    "externalId": "324516"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-ediscoverycase-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-ediscoverycase-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-ediscoverycase-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ediscoverycase-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-ediscoverycase-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-ediscoverycase-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryCase"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases/$entity",
    "description": "Project Bazooka",
    "lastModifiedDateTime": "2022-05-22T18:36:48.0834353Z",
    "status": "active",
    "closedDateTime": "2022-05-22T18:36:48.083436Z",
    "externalId": "324516",
    "id": "22aa2acd-7554-4330-9ba9-ce20014aaae4",
    "displayName": "CONTOSO LITIGATION-005",
    "createdDateTime": "2022-05-22T18:36:48.0834351Z",
    "lastModifiedBy": null,
    "closedBy": null
}
```

