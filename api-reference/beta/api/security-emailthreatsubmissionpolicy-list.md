---
title: "List emailThreatSubmissionPolicies"
description: "Get a list of the emailThreatSubmissionPolicy objects and their properties."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List emailThreatSubmissionPolicies
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.Read, ThreatSubmission.ReadWrite, ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All, ThreatSubmissionPolicies.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All, ThreatSubmissionPolicy.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET security/threatSubmission/emailThreatSubmissionPolicies
```

## Optional query parameters
Not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_emailthreatsubmissionpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-emailthreatsubmissionpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-emailthreatsubmissionpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-emailthreatsubmissionpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-emailthreatsubmissionpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-emailthreatsubmissionpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-emailthreatsubmissionpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.emailThreatSubmissionPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.emailThreatSubmissionPolicy",
      "id": "3df67ecc-11b4-b5b4-9bae-b0729940b3d1",
      "isReportToMicrosoftEnabled": "Boolean",
      "isReportToCustomizedEmailAddressEnabled": "Boolean",
      "isAskMeEnabledForUsers": "Boolean",
      "isAlwaysReportEnabledForUsers": "Boolean",
      "isNeverReportEnabledForUsers": "Boolean",
      "isCustomizedMessageEnabledForPhishing": "Boolean",
      "isCustomizedMessageEnabled": "Boolean",
      "customizedReportRecipientEmailAddress": "String",
      "isReviewEmailNotificationEnabled": "Boolean",
      "isCustomizedNotificationSenderEnabled": "Boolean",
      "isOrganizationBrandingEnabled": "Boolean",
      "customizedNotificationSenderEmailAddress": "String",
      "isReportFromQuarantineEnabled": "Boolean"
    }
  ]
}
```

