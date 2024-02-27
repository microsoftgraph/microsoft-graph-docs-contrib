---
title: "Create urlThreatSubmission"
description: "Create a new urlThreatSubmission object."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create urlThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_urlthreatsubmission_post_urlthreats" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-urlthreatsubmission-post-urlthreats-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/threatSubmission/urlThreats
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.

You may also specify the following properties when creating an **urlThreatSubmission**.

|Property|Type|Description|
|:---|:---|:---|
|category|submissionCategory|Inherited from [threatSubmission](../resources/security-threatsubmission.md) and required field. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`. It is use to tell what you are reporting the URL as.|
|webUrl|String|The webUrl to be submitted. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_urlthreatsubmission_from_urlthreats"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/threatSubmission/urlThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.urlThreatSubmission",
  "category": "phishing",
  "webUrl": "http://phishing.contoso.com"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-urlthreatsubmission-from-urlthreats-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-urlthreatsubmission-from-urlthreats-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-urlthreatsubmission-from-urlthreats-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-urlthreatsubmission-from-urlthreats-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-urlthreatsubmission-from-urlthreats-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-urlthreatsubmission-from-urlthreats-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-urlthreatsubmission-from-urlthreats-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-urlthreatsubmission-from-urlthreats-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.urlThreatSubmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/urlThreatSubmission/$entity",
  "@odata.type": "#microsoft.graph.security.urlThreatSubmission",
  "category": "phishing",
  "id": "49c5ef5b-1f65-444a-e6b9-08d772ea2059",
  "createdDateTime": "2021-10-10T03:30:18.6890937Z",
  "contentType": "url",
  "webUrl": "http://phishing.contoso.com",
  "status": "running",
  "source": "administrator",
  "createdBy": {
    "user": {
      "identity": "c52ce8db-3e4b-4181-93c4-7d6b6bffaf60",
      "displayName": "Ronald Admin",
      "email": "tifc@contoso.com"
    }
  },
  "result": {
  	"detail": "underInvestigation"
  },
  "adminReview": null,
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

