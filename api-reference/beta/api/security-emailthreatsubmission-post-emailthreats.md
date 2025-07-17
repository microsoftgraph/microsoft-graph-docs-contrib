---
title: "Create emailThreatSubmission"
description: "Create a new emailThreatSubmission object."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create emailThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_emailthreatsubmission_post_emailthreats" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-emailthreatsubmission-post-emailthreats-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/threatSubmission/emailThreats
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of either an [emailContentThreatSubmission](../resources/security-emailcontentthreatsubmission.md) object or an [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) object.

The **emailContentThreatSubmission** and **emailUrlThreatSubmission** resources are both subtypes of the **emailThreatSubmission** entity. Choose what to include in the request body based on the following:
* If you want to create a submission with the email content itself, include an **emailContentThreatSubmission** object.
* If you want to create a submission with a URL that points to the email, include an **emailUrlThreatSubmission** object.

After the **emailContentThreatSubmission** or **emailUrlThreatSubmision** objects are created, the threat submission service just stores some metadata about the email. The email content is not stored. As a result, an **emailThreatSubmission** entity is created.

## Response

If successful, this method returns a `201 Created` response code and an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object in the response body.

## Examples

### Example 1: Email threat submission creation with messageUrl and emailUrlThreatSubmission type

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_emailthreatsubmission_from_emailthreats"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.security.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@contoso.com",
  "messageUrl": "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-emailthreatsubmission-from-emailthreats-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-emailthreatsubmission-from-emailthreats-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-emailthreatsubmission-from-emailthreats-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-emailthreatsubmission-from-emailthreats-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-emailthreatsubmission-from-emailthreats-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-emailthreatsubmission-from-emailthreats-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-emailthreatsubmission-from-emailthreats-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-emailthreatsubmission-from-emailthreats-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/emailThreatSubmission/$entity",
  "@odata.type": "#microsoft.graph.security.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@contoso.com",
  "id": "49c5ef5b-1f65-444a-e6b9-08d772ea2059",
  "createdDateTime": "2021-10-10T03:30:18.6890937Z",
  "contentType": "email",
  "emailSubject": "This is a spam",
  "status": "succeeded",
  "source": "administrator",
  "createdBy": {
    "user": {
      "identity": "c52ce8db-3e4b-4181-93c4-7d6b6bffaf60",
      "displayName": "Ronald Admin",
      "email": "tifc@contoso.com"
    }
  },
  "result": {
    "detail": "allowedByTenant",
    "category": "notSpam",
    "userMailboxSetting": "isFromDomainInDomainSafeList,isJunkMailRuleEnabled",
    "detectedUrls": ["contoso.com"],
    "detectedFiles": [
        {
            "fileName": "test.ps1",
            "fileHash": "hash of test.ps1"
        }
    ]
  },
  "adminReview": null,
  "internetMessageId": "some-internet-message-id@contoso.com",
  "sender": "test@contoso.com",
  "senderIP": "127.0.0.1",
  "receivedDateTime": "2021-10-09T03:30:18.6890937Z",
  "originalCategory": "notSpam",
  "attackSimulationInfo": null,
  "tenantAllowOrBlockListAction": null,
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

### Example 2: Email threat submission creation with tenantAllowOrBlockListAction provided

#### Request
```http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.security.emailUrlThreatSubmission",
  "category": "notSpam",
  "recipientEmailAddress": "tifc@contoso.com",
  "messageUrl": "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=",
  "tenantAllowOrBlockListAction":
  {
    "action": "allow",
    "expirationDateTime": "2021-10-30T03:30:18.6890937Z"
    "note": "temporal allow the url/attachment/sender in the email."
  }
}
```

#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/emailThreatSubmission/$entity",
  "@odata.type": "#microsoft.graph.security.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@contoso.com",
  "id": "49c5ef5b-1f65-444a-e6b9-08d772ea2059",
  "createdDateTime": "2021-10-10T03:30:18.6890937Z",
  "contentType": "email",
  "emailSubject": "This is a spam",
  "status": "succeeded",
  "source": "administrator",
  "createdBy": {
    "user": {
      "identity": "c52ce8db-3e4b-4181-93c4-7d6b6bffaf60",
      "displayName": "Ronald Admin",
      "email": "tifc@contoso.com"
    }
  },
  "result": {
    "detail": "allowedByTenant",
    "category": "notSpam",
    "userMailboxSetting": "isFromDomainInDomainSafeList,isJunkMailRuleEnabled",
    "detectedUrls": ["contoso.com"],
    "detectedFiles": [
        {
            "fileName": "test.ps1",
            "fileHash": "hash of test.ps1"
        }
    ]
  },
  "adminReview": null,
  "internetMessageId": "some-internet-message-id@contoso.com",
  "sender": "test@contoso.com",
  "senderIP": "127.0.0.1",
  "receivedDateTime": "2021-10-09T03:30:18.6890937Z",
  "originalCategory": "notSpam",
  "attackSimulationInfo": null,
  "tenantAllowOrBlockListAction":
  {
    "action": "allow",
    "expirationDateTime": "2021-10-30T03:30:18.6890937Z",
    "note": "temporal allow the url/attachment/sender in the email.",
    "results": null
  },
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

### Example 3: Email threat submission creation with fileContent and emailContentThreatSubmission type

#### Request
```http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.security.emailContentThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@contoso.com",
  "fileContent": "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."
}
```

#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/emailThreatSubmission/$entity",
  "@odata.type": "#microsoft.graph.security.emailContentThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@contoso.com",
  "id": "49c5ef5b-1f65-444a-e6b9-08d772ea2059",
  "createdDateTime": "2021-10-10T03:30:18.6890937Z",
  "contentType": "email",
  "emailSubject": "This is a spam",
  "status": "succeeded",
  "source": "administrator",
  "createdBy": {
    "user": {
      "identity": "c52ce8db-3e4b-4181-93c4-7d6b6bffaf60",
      "displayName": "Ronald Admin",
      "email": "tifc@contoso.com"
    }
  },
  "result": {
    "detail": "allowedByTenant",
    "category": "notSpam",
    "userMailboxSetting": "isFromDomainInDomainSafeList,isJunkMailRuleEnabled",
    "detectedUrls": ["contoso.com"],
    "detectedFiles": [
        {
            "fileName": "test.ps1",
            "fileHash": "hash of test.ps1"
        }
    ]
  },
  "adminReview": null,
  "internetMessageId": "some-internet-message-id@contoso.com",
  "sender": "test@contoso.com",
  "senderIP": "127.0.0.1",
  "receivedDateTime": "2021-10-09T03:30:18.6890937Z",
  "originalCategory": "notSpam",
  "attackSimulationInfo": null,
  "tenantAllowOrBlockListAction": null,
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

