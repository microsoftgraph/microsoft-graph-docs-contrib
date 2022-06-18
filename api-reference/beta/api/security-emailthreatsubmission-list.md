---
title: "List emailThreatSubmissions"
description: "Get a list of the emailThreatSubmission objects and their properties."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List emailThreatSubmissions
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [emailThreatSubmission](../resources/security-emailthreatsubmission.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.Read, ThreatSubmission.ReadWrite, ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatSubmission/emailThreats
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Pattern                | Syntax                                                       | 
| ---------------------- | ------------------------------------------------------------ |
| Server-side pagination | `@odata.nextLink`                                            | 
| Filter                 | `/emailThreats?$filter=emailSubject eq 'value'`              | 
| Filter                 | `/emailThreats?$filter=sender eq 'value'`                    | 
| Filter                 | `/emailThreats?$filter=id eq 'value'`                        | 
| Filter                 | `/emailThreats?$filter=createdDateTime ge 'value' and createdDateTime lt 'value'` |
| Filter                 | `/emailThreats?$filter=category eq 'value'`                  | 
| Filter                 | `/emailThreats?$filter=createdBy eq 'value'`                 |
| Filter                 | `/emailThreats?$filter=status eq 'value'`                    | 
| Filter                 | `/emailThreats?$filter=source eq 'value'`                    | 

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [emailThreatSubmission](../resources/security-emailthreatsubmission.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_emailthreatsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatSubmission/emailThreats
```


### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.emailThreatSubmission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/threatSubmission/emailThreats",
    "value": [
        {
            "@odata.type": "#microsoft.graph.emailThreatSubmission",
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
                "results": [
                    {
                        "identity": "tenant allow block list id",
                        "value": "contoso.com",
                        "entryType": "url",
                        "expirationDateTime": "2021-10-30T03:30:18.6890937Z",
                        "status": "succeeded"
                    },
                    {
                        "identity": "tenant allow block list id",
                        "value": "test-contoso.com",
                        "entryType": "url",
                        "expirationDateTime": "2021-10-30T03:30:18.6890937Z",
                        "status": "skipped"
                    },
                ]
            },
            "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
        }
    ]
}
```

