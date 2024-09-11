---
title: "Update healthIssue"
description: "Update the properties of a healthIssue object."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update healthIssue

Namespace: microsoft.graph.security



Update the properties of a [healthIssue](../resources/security-healthissue.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-healthissue-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-healthissue-update-permissions.md)]

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
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.healthIssue",
  "truncated": true,
  "name": "update_healthissue"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/security/identities/healthIssues/{healthIssueId}
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