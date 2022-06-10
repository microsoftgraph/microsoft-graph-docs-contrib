---
title: "Create emailThreatSubmission"
description: "Create a new emailThreatSubmission object."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create emailThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.ReadWrite, ThreatSubmission.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmission.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, either supply a JSON representation of the [emailContentThreatSubmission](../resources/security-emailcontentthreatsubmission.md) object or the [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) object.

The emailContentThreatSubmission and emailUrlThreatSubmission are both subtypes of emailThreatSubmission entity and helps to make submission in different ways. 
* The emailContentThreatSubmission is created with email content itself.
* If you want to create a submission with a URL which points to the email, use the emailUrlThreatSubmission.
* After emailContentThreatSubmission and emailUrlThreatSubmision are created, the threat submission service just stores some metadata about the email. The email content is not stored. So, the created entity from both methods is an emailThreatSubmission entity.

## Response

If successful, this method returns a `201 Created` response code and an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object in the response body.

## Examples

### Example 1: email threat submission creation with messageUrl and emailUrlThreatSubmission type
#### Request
<!-- {
  "blockType": "request",
  "name": "create_emailthreatsubmission_from_emailthreats"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
  "messageUrl": "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
}
```

#### Reponse

#### Response
>**Note:** The response object shown here might be shortened for readability.
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
  "@odata.type": "#microsoft.graph.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
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
      "email": "tifc@a830edad9050849eqtpwbjzxodq.onmicrosoft.com"
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

### Example 2: email threat submission creation with tenantAllowOrBlockListAction provided

#### Request
```http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.emailUrlThreatSubmission",
  "category": "notSpam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
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
>**Note:** The response object shown here might be shortened for readability.
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
  "@odata.type": "#microsoft.graph.emailUrlThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
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
      "email": "tifc@a830edad9050849eqtpwbjzxodq.onmicrosoft.com"
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

### Example 3: email threat submission creation with fileContent and emailContentThreatSubmission type

#### Request
```http
POST https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.emailContentThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
  "fileContent": "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."
}
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
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
  "@odata.type": "#microsoft.graph.emailContentThreatSubmission",
  "category": "spam",
  "recipientEmailAddress": "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
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
      "email": "tifc@a830edad9050849eqtpwbjzxodq.onmicrosoft.com"
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

