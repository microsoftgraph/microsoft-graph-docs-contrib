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

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatSubmission.ReadWrite,ThreatSubmission.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|ThreatSubmission.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.

You may also specify the following properties when creating an **urlThreatSubmission**.

|Property|Type|Description|
|:---|:---|:---|
|category|submissionCategory|Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`. Required.|
|webUrl|String|The webUrl to be submitted. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object in the response body.

## Examples

### Request
The following is an example of a request.
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


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
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
  "@odata.type": "#microsoft.graph.urlThreatSubmission",
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
      "email": "tifc@a830edad9050849eqtpwbjzxodq.onmicrosoft.com"
    }
  },
  "result": {
  	"detail": "underInvestigation"
  },
  "adminReview": null,
  "tenantId" : "39238e87-b5ab-4ef6-a559-af54c6b07b42"
}
```

