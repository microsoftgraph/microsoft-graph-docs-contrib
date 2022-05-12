---
title: "Get emailThreatSubmission"
description: "Read the properties and relationships of an emailThreatSubmission object."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get emailThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.Read, ThreatSubmission.ReadWrite, ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All|
|Delegated (personal Microsoft account)|N/A|
|Application|ThreatSubmission.Read.All, ThreatSubmission.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /emailThreats/{emailThreatsId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_emailthreatsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta/emailThreats/{emailThreatsId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.emailThreatSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.emailThreatSubmission",
    "id": "7dd42276-41bf-1336-7977-a93393203c7b",
    "tenantId": "String",
    "createdDateTime": "String (timestamp)",
    "contentType": "String",
    "category": "String",
    "source": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.security.submissionUserIdentity"
    },
    "status": "String",
    "result": {
      "@odata.type": "microsoft.graph.security.submissionResult"
    },
    "adminReview": {
      "@odata.type": "microsoft.graph.security.submissionAdminReview"
    },
    "clientSource": "String",
    "recipientEmailAddress": "String",
    "internetMessageId": "String",
    "subject": "String",
    "sender": "String",
    "senderIP": "String",
    "receivedDateTime": "String (timestamp)",
    "originalCategory": "String",
    "attackSimulationInfo": {
      "@odata.type": "microsoft.graph.security.attackSimulationInfo"
    },
    "tenantAllowOrBlockListAction": {
      "@odata.type": "microsoft.graph.security.tenantAllowOrBlockListAction"
    }
  }
}
```

