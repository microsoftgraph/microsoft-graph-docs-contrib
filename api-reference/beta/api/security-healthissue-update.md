---
title: "Update healthIssue"
description: "Update the properties of a microsoft.graph.security.healthIssue object."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: apiPageType
ms.date: 03/20/2024
---

# Update healthIssue

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|SecurityIdentitiesHealth.Read.All, SecurityIdentitiesHealth.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Not supported.|SecurityIdentitiesHealth.Read.All, SecurityIdentitiesHealth.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/healthIssues/{healthIssueId}
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
|status|microsoft.graph.security.healthIssueStatus|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_healthissue"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/healthIssues/{healthIssueId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "displayName": "String",
  "healthIssueType": "String",
  "issueTypeId": "String",
  "severity": "String",
  "status": "String",
  "domainNames": [
    "String"
  ],
  "sensorDNSNames": [
    "String"
  ],
  "description": "String",
  "recommendations": [
    "String"
  ],
  "recommendedActionCommands": [
    "String"
  ],
  "additionalInformation": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "id": "bf600aba-e975-0274-d332-c0f79dc75740",
  "displayName": "String",
  "healthIssueType": "String",
  "issueTypeId": "String",
  "severity": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "domainNames": [
    "String"
  ],
  "sensorDNSNames": [
    "String"
  ],
  "description": "String",
  "recommendations": [
    "String"
  ],
  "recommendedActionCommands": [
    "String"
  ],
  "additionalInformation": [
    "String"
  ]
}
```

